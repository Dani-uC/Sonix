#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QUrl>
#include <QDirIterator>
#include <QQmlContext>

#include "core.h"
using namespace Qt::StringLiterals;
int main(int argc, char *argv[]){
    QGuiApplication app(argc,argv);

    QQmlApplicationEngine engine;

    Core core;

    engine.rootContext()->setContextProperty("core", &core);

    const QUrl url(QStringLiteral("qrc:/Myapp/qml/main.qml"));
    
    engine.load(url);


   if(engine.rootObjects().isEmpty())
   return -1;
   
   return app.exec();

}