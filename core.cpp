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
    player->setSource(songList.at(currIndex)->sendSongPath());
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
    if(currIndex==songList.size())
        currIndex=1;
    else
    currIndex++;
    player->setSource(songList.at(currIndex)->sendSongPath());
    player->play();
    
}
void Core::prev(){
    if(currIndex==1)
        currIndex=songList.size();
    else
    currIndex--;
    player->setSource(songList.at(currIndex)->sendSongPath());
    player->play();
}
