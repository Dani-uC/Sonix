#include "core.h"
#include "getaudio.h"

Core::Core(QObject *parent):QObject(parent) {

    QList<Track*> songList=getAudio();
    //qDebug() << songList.at(1)->sendSongPath();

    player = new QMediaPlayer(this);
    audioOut=new QAudioOutput(this);
    loadTrack();
    setVolume(1.0f);   

}
Core::~Core(){}

void Core::loadTrack(){
    player->setSource(songList.at(songIndex)->sendSongPath());
    player->setAudioOutput(audioOut);
}

void Core::setVolume(float value){
    audioOut->setVolume(value);

}

void Core::playPause(){
    if (player->playbackState() == QMediaPlayer::PlayingState)
        player->pause();
    else
        player->play();
}

void Core::next(){
    songIndex++;
    player->setSource(songList.at(songIndex)->sendSongPath());
    
}
void Core::prev(){
    player->play();
}
