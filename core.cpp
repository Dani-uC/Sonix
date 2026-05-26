#include "core.h"
#include "getaudio.h"

Core::Core(QObject *parent):QObject(parent) {

    QList<Track*> songList=getAudio();
    //qDebug() << songList.at(1)->sendSongPath();

    player = new QMediaPlayer(this);
    audioOut=new QAudioOutput(this);
    play_list(songList,audioOut,player);
    setVolume(audioOut,0.8f);
    

}
Core::~Core(){}

void Core::playPause(){

}

void play_list(QList<Track*> songList, QAudioOutput *audioOutput, QMediaPlayer *player){
    player->setSource(songList.at(5)->sendSongPath());
    player->play();
    player->setAudioOutput(audioOutput);
}

void setVolume(QAudioOutput *audioOutput,float value){
    audioOutput->setVolume(value);

}






