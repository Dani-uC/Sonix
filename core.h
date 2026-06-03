#pragma once
#include <QObject>
#include <QMediaPlayer>
#include <QAudioOutput>
#include <QString>
#include <vector>
#include <algorithm>
#include <filesystem>
#include "getaudio.h"

namespace fs=std::filesystem;

class Core:public QObject {
    Q_OBJECT

    public:
    explicit Core(QObject *parent=nullptr);
    ~Core();
    Q_INVOKABLE void playPause();
    Q_INVOKABLE void next();
    Q_INVOKABLE void prev();
    void loadTrack();
    void setVolume(float value);

    

    private:
    QMediaPlayer *player=nullptr;
    QAudioOutput *audioOut=nullptr;
    QString path;
    int songIndex = 1;


};



