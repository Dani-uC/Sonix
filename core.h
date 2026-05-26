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
    void playPause();
    void next();
    void prev();

    private:
    QMediaPlayer *player=nullptr;
    QAudioOutput *audioOut=nullptr;
    QString path;


};


void play_list(QList<Track*> songList, QAudioOutput *audioOutput, QMediaPlayer *player);

void setVolume(QAudioOutput *audioOutput,float value);