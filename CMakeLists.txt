cmake_minimum_required(VERSION 3.16)
project(sonix VERSION 1.0 LANGUAGES CXX)

set(CMAKE_PREFIX_PATH "/home/ESDi7/QtMain/6.11.1/gcc_64/" CACHE PATH "" FORCE)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml Quick Multimedia)

qt_add_executable(sonix main.cpp core.cpp getaudio.cpp)

qt_add_qml_module(sonix 
        URI Myapp
        VERSION 1.0
        QML_FILES
            qml/main.qml qml/icons.qml

        RESOURCES

        resource/svg_icons/next.svg
        resource/svg_icons/previous.svg
        resource/svg_icons/play.svg
        resource/svg_icons/pause.svg
        resource/svg_icons/search.svg
        resource/svg_icons/shuffle.svg


        
)

target_link_libraries(sonix PRIVATE 
         Qt6::Core
         Qt6::Gui
         Qt6::Qml
         Qt6::Quick
         Qt6::Multimedia
        
)       