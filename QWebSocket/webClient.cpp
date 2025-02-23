//webClient.cpp
#include "webClient.h"
#include <QDebug>
#include <QTimer>

//超时检查
bool WebClient::waitEvent(int timesec){
    Q_ASSERT(webClient != nullptr);
    QEventLoop eventLoop;
    bool ret = true;
    bool r = connect(webClient,&QWebSocket::connected, &eventLoop, &QEventLoop::quit);  //连接，退出事件循环
    Q_ASSERT(r);
    //QTimer mtimer;
    //mtimer.singleShot(timesec*1000, &eventLoop, &QEventLoop::quit);
    QTimer::singleShot(timesec*1000, &eventLoop,[&]{   //等待timesec，超时，ret=false才退出
        ret = false;
        eventLoop.quit();
    });
    eventLoop.exec();
    return ret;
}

WebClient::WebClient(QObject* parent) : QObject(parent),sendLen(0){
    webClient = new QWebSocket();
    webClient->setParent(this);
    inputTimer = new QTimer(this);
    webClient->open(QUrl("ws://127.0.0.1:9999"));
    if(waitEvent(3)){ //3s无超时
        qDebug() << "Connected!!";
        connect(webClient,&QWebSocket::textMessageReceived, this, [=](const QString &msg){
            qDebug() << "recv:"<<msg;
        });
        connect(inputTimer,&QTimer::timeout, this, &WebClient::sendMsg);
        inputTimer->setSingleShot(false);
        inputTimer->start(100);
    }
    connect(webClient, SIGNAL(error(QAbstractSocket::SocketError)), this, \
    SLOT(handleError(QAbstractSocket::SocketError)));
}

void WebClient::onClose(){
    webClient->close();
    webClient->deleteLater();
}

void WebClient::handleError(QAbstractSocket::SocketError error){
    qDebug()<<error;
    onClose();
}

//非阻塞定时轮询发送
void WebClient::sendMsg(){
    Q_ASSERT(webClient);
    QTextStream cin(stdin);
    if(!cin.atEnd()){
        QString input = cin.readLine();
        if(!input.isEmpty()){
            sendLen += webClient->sendTextMessage(input);
            webClient->flush();
            qDebug()<<"sendlen:"<<sendLen;
        }
    }
}
