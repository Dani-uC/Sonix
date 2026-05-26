#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QUrl>
#include <QDirIterator>

#include "core.h"
using namespace Qt::StringLiterals;
int main(int argc, char *argv[]){
    QGuiApplication app(argc,argv);

    QQmlApplicationEngine engine;

    Core core;

    QDirIterator it(":",QDirIterator::Subdirectories);
    while(it.hasNext()){
        qDebug() << it.next();
    }

    const QUrl url(QStringLiteral("qrc:/Myapp/qml/main.qml"));
    qDebug() << engine.importPathList();
    engine.load(url);


   if(engine.rootObjects().isEmpty())
   return -1;
   
   return app.exec();

}