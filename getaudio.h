#pragma once

#include <QList>
#include <iostream>
#include <filesystem>
#include <string>
#include <vector>
#include <algorithm>


namespace fs = std::filesystem;

class Track{
    public:
    void getSongPath(std::string songpath){
        path = QString::fromStdString(songpath);    
    }
    QString sendSongPath(){
        return path;
    }
    void setIndex(int i){
        index = i;
    }
    int getIndex(){
        return index;
    }

    private:
    QString path;
    int index;
    
};

extern QList<Track*> songList;

QList<Track*> getAudio();

bool isAudioFile(const fs::path& path);


