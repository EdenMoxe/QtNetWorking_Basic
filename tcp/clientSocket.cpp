#include "clientSocket.h"
#include <QtNetwork>
#include <QDebug>

ClientSocket::ClientSocket(QObject*parent):QObject(parent){
    tcpClient = new QTcpSocket(this);
    tcpClient->connectToHost("127.0.0.1",9999);

    if (!tcpClient->waitForConnected(3000)) { // 等待 3 秒连接
        qDebug() << "Connection failed:" << tcpClient->errorString();
    }

    connect(tcpClient,&QTcpSocket::connected,[=](){
        qDebug()<<"Client connected!!";
    });

    //Qt 5.15一下使用槽函数检查错误
    connect(tcpClient, SIGNAL(error(QAbstractSocket::SocketError)), this, \
    SLOT(handleError(QAbstractSocket::SocketError)));
}



void ClientSocket::handleError(QAbstractSocket::SocketError error){
    qDebug()<<"Client Connect error:"<<error;
    tcpClient->close();
    tcpClient->deleteLater();
}

void ClientSocket::SendMsg(){
    qDebug()<<tcpClient->state();
    char buf[MAXSIZE];
    qint64 len = 0;

    while(1){
        if(strncmp(buf,"quit",4)==0)
            break;
        fgets(buf,32,stdin);
        buf[strlen(buf)-1] = '\0'; //避免回车空行
        len += tcpClient->write(buf,strlen(buf));
        tcpClient->flush(); //即刻刷新发送
        qDebug()<<"Succeed Send:"<<len;
    }
}
