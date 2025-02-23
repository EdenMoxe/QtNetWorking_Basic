#pragma once

#include <QtNetwork>

#define MAXSIZE 128

class ServerSocket:public QObject{
    Q_OBJECT
public slots:
    void getNewMsg();

public:
    ServerSocket(QObject* parent = nullptr);

public:
    QTcpServer* tcpServer = nullptr;
    QTcpSocket* clientSocket;
};





