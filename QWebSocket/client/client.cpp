#include <QDebug>
#include "webClient.h"


int main(int argc, char* argv[]){
    QCoreApplication app(argc, argv);

    qDebug()<<"This is Client";
    WebClient webClient;

    return app.exec();
}
