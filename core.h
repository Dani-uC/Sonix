#pragma once
#include <QObject>
#include <QMediaPlayer>
#include <QAudioOutput>
#include <QString>
#include <vector>
#include <algorithm>
#include <filesystem>
#include <QMediaMetaData>
#include <QImage>
#include <QDir>
#include "getaudio.h"

namespace fs=std::filesystem;

class Core:public QObject {
    Q_OBJECT

    Q_PROPERTY(qint64 duration READ duration NOTIFY durationChanged)
    Q_PROPERTY(qint64 position READ position NOTIFY positionChanged)
    //Q_PROPERTY(QString coverArtUrl READ coverArtUrl NOTIFY coverArtUrlChanged)


    public:
    explicit Core(QObject *parent=nullptr);
    ~Core();
    Q_INVOKABLE void playPause();
    Q_INVOKABLE void next();
    Q_INVOKABLE void prev();
    void loadTrack();
    void setVolume(float value);
    qint64 duration() const { return songDuration; }
    qint64 position() const { return timePosition ; }
    //QImage coverArt(){ return songCoverArt; }
    //QString coverArtUrl(){ return songCoverArtUrl; }
    signals:
    void durationChanged();
    void positionChanged();
    void coverArtChanged();
    void coverArtUrlChanged();

    private:
    QMediaPlayer *player=nullptr;
    QAudioOutput *audioOut=nullptr;
    QString path;
    int currIndex=0;
    qint64 songDuration = 0;
    qint64 timePosition = 0;
   // QImage songCoverArt;
   // QString songCoverArtUrl;

};



