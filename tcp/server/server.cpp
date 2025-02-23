#include <QDebug>
#include "serverSocket.h"

using namespace std;

int main(int argc, char*argv[]){
    QCoreApplication app(argc, argv);

    qDebug() << "This is server";
    ServerSocket serverSocket;

    return app.exec();
}
