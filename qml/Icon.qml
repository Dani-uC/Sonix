import QtQuick
import QtQuick.Effects

Item{
    id:root

    height:100
    width:100
    property alias imageSource:controlIcon.source
    property alias mouseAction:mouseContainer
     property bool isPlaying: false

    Image {
    id:controlIcon
    anchors.centerIn:parent
    width: 64
    height: 64
    sourceSize.width: 64
    sourceSize.height: 64
    fillMode: Image.PreserveAspectFit
    opacity: if(mouseContainer.containsPress){
      return 0.5
    }else if(mouseContainer.containsMouse){
      return 1.0
    }else{
      return 0.8
    }
    
    

    Behavior on opacity {
     NumberAnimation {
            duration: 100         
            easing.type: Easing.InOutQuad 
        }
    }
    
    MouseArea {
      id:mouseContainer
      anchors.fill:parent
      hoverEnabled:true
    }
    }


  }
