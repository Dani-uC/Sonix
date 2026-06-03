#include "getaudio.h"

QList<Track*> songList;

bool isAudioFile(const fs::path& path) {

    const std::vector<std::string> audioExtensions = {".mp3", ".wav", ".flac", ".m4a", ".ogg"};
    

    std::string ext = path.extension().string();
    std::transform(ext.begin(), ext.end(), ext.begin(), ::tolower);
    
    return std::find(audioExtensions.begin(), audioExtensions.end(), ext) != audioExtensions.end();
}

QList<Track*> getAudio() {
    
    fs::path searchPath = "/home/ESDi7"; 

    std::cout << "Searching for audio files in: " << searchPath << "\n\n";

    try {
        if (fs::exists(searchPath) && fs::is_directory(searchPath)) {
            
            for (const auto& entry : fs::recursive_directory_iterator(searchPath, fs::directory_options::skip_permission_denied)) {
                if (fs::is_regular_file(entry.path()) && isAudioFile(entry.path())) {
                    Track *song = new Track;
                    song->getSongPath(entry.path().string());
                    song->setIndex(songList.size());
                    songList.append(song);
                }
            }
        } else {
            std::cerr << "The specified path does not exist or is not a directory.\n";
        }
    } catch (const fs::filesystem_error& e) {
        std::cerr << "Filesystem error: " << e.what() << "\n";
    }

    return songList;

}
