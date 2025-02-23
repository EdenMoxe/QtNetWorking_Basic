#pragma once

#include <QCoreApplication>
#include <QWebSocket>
#include <QWebSocketServer>
#include <QTimer>

class WebServer:public QObject{
    Q_OBJECT
public:
    WebServer(QObject* parent = nullptr);

    void sendMsg();

private:
    QWebSocketServer* webServer = nullptr;
    QWebSocket* m_socket = nullptr;
    QTimer* inputTimer;
};
