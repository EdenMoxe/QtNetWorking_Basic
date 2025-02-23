//webClient.h
#pragma once
#include <QCoreApplication>
#include <QWebSocket>
#include <QTimer>

#define MAXSIZE 1024

class WebClient:public QObject{
    Q_OBJECT
public:
    WebClient(QObject* parent = nullptr);
    void SendTextMsg();
    void sendMsg();
    void onHandleSend();
    bool waitEvent(int timesec);
    void onClose();

public slots:
    void handleError(QAbstractSocket::SocketError);

private:
    QWebSocket* webClient;
    QTimer* inputTimer;
    qint64 sendLen;
};
