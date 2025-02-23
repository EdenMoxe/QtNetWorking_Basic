#include <QDebug>
#include "clientSocket.h"


int main(){
    //QCoreApplication app(argc, argv);
    qDebug()<<"This is client";
    ClientSocket clientSocket;
    clientSocket.SendMsg();

    //return app.exec();
    return 0;
}
