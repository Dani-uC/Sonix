import QtQuick
import QtQuick.Effects

Item{
    id:root

    height:100
    width:100
    property alias imageSource:controlIcon.source
    
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
            duration: 100         // Duration in milliseconds (300ms = 0.3 seconds)
            easing.type: Easing.InOutQuad // Controls the fading acceleration curve
        }
    }
    
    MouseArea {
      id:mouseContainer
      anchors.fill:parent
      hoverEnabled:true
    }
    }


  }
