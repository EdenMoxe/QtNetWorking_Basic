#include "webServer.h"
#include <QDebug>

WebServer::WebServer(QObject *parent):QObject(parent){
    inputTimer = new QTimer(this);
    webServer = new QWebSocketServer("WebServer",QWebSocketServer::NonSecureMode, this);
    if(webServer->listen(QHostAddress::Any, 9999)){
        qDebug() << "listenning...";
    }

    connect(webServer,&QWebSocketServer::newConnection, this, [=](){
        m_socket = webServer->nextPendingConnection();
        QString ip = m_socket->peerAddress().toString();
        quint16 port = m_socket->peerPort();
        qDebug()<<QString("[%1:%2] Connected!!").arg(ip).arg(port);


        if(m_socket!=nullptr && m_socket->state() == QAbstractSocket::ConnectedState){
            qDebug() << "try to recv";
            connect(m_socket,&QWebSocket::textMessageReceived, this, [=](const QString &msg){
                qDebug() << "recv:"<<msg;
            });
        }


        connect(inputTimer, &QTimer::timeout, this, &WebServer::sendMsg);
        inputTimer->setSingleShot(false);
        inputTimer->start(100);
    });
}


//非阻塞定时轮询发送
void WebServer::sendMsg(){
    Q_ASSERT(m_socket);
    QTextStream cin(stdin);
    if(!cin.atEnd()){
        QString input = cin.readLine();
        if(!input.isEmpty()){
            m_socket->sendTextMessage(input);
            m_socket->flush();
        }
    }
}








