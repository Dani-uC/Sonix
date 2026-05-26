import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Layouts
//import Qt5Compact.GraphicalEffects

ApplicationWindow{
    id:root
    visible:true
    width:640
    height:480
    title: "sonix"
    color: '#021a27'
    Drawer{
        id:drawer
        width:240
        height: parent.height
        edge: Qt.RightEdge
        background: Rectangle{
            color: '#2DEFD2'
        }
         ColumnLayout{
            width:parent
            height:parent
            anchors.centerIn:parent
            spacing:10

                Button{
                    text:"Home"
                    anchors.centerIn:parent
                    
                }
                Button{
                    text:"Library"
                    anchors.centerIn:parent
                    
                }
                Button{
                    text:"Search"
                    anchors.centerIn:parent
                    
                }
                Button{
                    text:"Settings"
                    anchors.centerIn:parent
                    
                }
        }
    }
    Button{
        width:200
        height:100
        anchors.centerIn:parent
        onClicked:drawer.open()
            Text{
                anchors.centerIn:parent
                text:"Open Drawer"
                font.pixelSize:24
            }
        background: Rectangle{
            color: '#0f3458'
            radius:10
        }
   /**Image {
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    source: "qrc:/Myapp/resource/svg_icons/play.svg"
    width: 24
    height: 24
    */
//}

Image {
    width: 64
    height: 64
    source: "qrc:/Myapp/resource/svg_icons/play.svg"
    sourceSize.width: 64
    sourceSize.height: 64
    fillMode: Image.PreserveAspectFit
}
Button {
    anchors.top:root.bottom
    anchors.horizontalCenter: root.horizontalCenter
    icon.source: 
    icon.width: 32
    icon.height: 32
    icon.color:'#2DEFD2'
}

        
    

    }
}
































/*
     Rectangle{
        id:rect
        width:400
        height:400
        visible: true
        anchors.fill: parent
        
        
        
        
        gradient: Gradient{
        orientation:Gradient.vertical

        GradientStop { position: 0.0; color: '#8a8aff'}
        GradientStop { position: 0.5; color: '#9eff75'}
        GradientStop { position: 1.0; color: '#d8ff2c'}
        
        }
        */

    
    
   
    
    /*  
    Text{
        anchors.centerIn: parent
        text:"Hello new Qml"
        font.pixelSize:24
    }
*/