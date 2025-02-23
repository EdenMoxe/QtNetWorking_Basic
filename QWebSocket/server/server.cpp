#include <QDebug> 
#include "webServer.h"

int main(int argc, char*argv[]){
    QCoreApplication app(argc, argv);

    qDebug() << "This is Server";
    WebServer wServer;

    return app.exec();
}
