    #include "serverSocket.h"
    #include <QtNetwork>

    ServerSocket::ServerSocket(QObject* parent):QObject(parent){
        tcpServer = new QTcpServer(this);
        if(tcpServer->listen(QHostAddress::Any,9999)){
            qDebug()<<"listenning...";
        }
        connect(tcpServer,&QTcpServer::newConnection,[=](){
            clientSocket = tcpServer->nextPendingConnection();  //获得新客户端
            qDebug()<<"Connected!!";

            //打印客户端信息
            QString ip = clientSocket->peerAddress().toString();
            quint16 port = clientSocket->peerPort();
            qDebug()<<QString("[%1:%2] Connected!!").arg(ip).arg(port);

            //连接状态接收信息
            if(clientSocket && clientSocket->state()==QTcpSocket::ConnectedState){
                qDebug()<<"try to recv:";
                connect(clientSocket,&QTcpSocket::readyRead,this,&ServerSocket::getNewMsg);
            }
        });
    }

    void ServerSocket::getNewMsg(){
        qDebug()<<"begin parse msg";
        QByteArray recvMsg = clientSocket->readAll();
        if(strncmp(recvMsg.data(),"quit",4)==0){
            clientSocket->abort();
            clientSocket->deleteLater();
            return;
        }
        QString reMsg = QString::fromUtf8(recvMsg);
        qDebug() << reMsg;
    }
