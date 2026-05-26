import QtQuick
import QtQuick.Effects

Item{
    id:root
    property alias source:controlIcon.source
    Image {
    id:controlIcon
    width: 64
    height: 64
    sourceSize.width: 64
    sourceSize.height: 64
    fillMode: Image.PreserveAspectFit
}
        
     MultiEffect{
        anchors.fill: controlIcon
        source: controlIcon
        colorization: 1.0
        colorizationColor: '#2DEFD2'
    }
}