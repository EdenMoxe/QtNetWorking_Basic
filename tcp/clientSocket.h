#pragma once
#include <QDebug>
#include <QCoreApplication>
#include <QTcpSocket>

#define MAXSIZE 128

class ClientSocket:public QObject{
    Q_OBJECT
public:
    ClientSocket(QObject*parent = nullptr);
    void SendMsg();

public slots:
    void handleError(QAbstractSocket::SocketError error); //槽函数检查错误

private:
    QTcpSocket* tcpClient;
};

