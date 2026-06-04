#include "core.h"
#include "getaudio.h"

Core::Core(QObject *parent):QObject(parent) {

    QList<Track*> songList=getAudio();
    //qDebug() << songList.size();

    player = new QMediaPlayer(this);
    audioOut=new QAudioOutput(this);
    loadTrack();
    setVolume(1.0f); 
    
    connect(player, &QMediaPlayer::durationChanged, this, [=](qint64 duration) {
    songDuration = duration;
    emit durationChanged(); 
});
    connect(player, &QMediaPlayer::positionChanged, this, [=](qint64 position) {
    timePosition = position;
    if(timePosition==songDuration)
    next();
    emit positionChanged(); 
});




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
    if(currIndex==songList.size()-1)
        currIndex=0;
    else
    currIndex++;
    player->setSource(songList.at(currIndex)->sendSongPath());
    player->play();
    
}
void Core::prev(){
    if(currIndex==0)
        currIndex=songList.size()-1;
    else
    currIndex--;
    //qDebug() <<"current list Index is:" << currIndex<<'\n';
    player->setSource(songList.at(currIndex)->sendSongPath());
    player->play();
}


