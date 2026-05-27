import QtQuick
import QtQuick.Effects

Item{
    id:root
    property alias imageSource:controlIcon.source
    Image {
    id:controlIcon
    width: 64
    height: 64
    sourceSize.width: 64
    sourceSize.height: 64
    fillMode: Image.PreserveAspectFit
    anchors.top: parent.top
}
        
     MultiEffect{
        anchors.fill: controlIcon
        source: controlIcon
        colorization: 1.0
        colorizationColor: '#2DEFD2'
    }
}