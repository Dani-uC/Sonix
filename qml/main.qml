
/*
'#021a27'
'#2DEFD2'
'#0f3458'


*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Qt5Compat.GraphicalEffects

ApplicationWindow {
    id: window
    visible: true
    width: 1110
    height: 880
    minimumWidth: 1200
    minimumHeight: 880
    title: "SONIX"
    font.family: "Arial"
    font.pointSize: 12 
    color: '#021a27'
    onWidthChanged: {console.log("width:", width)}
    onHeightChanged: {console.log("height:", height)}

    menuBar: MenuBar {
        height: 25
        leftPadding: 0
        rightPadding: 0
        topPadding: 0
        bottomPadding: 0
        background:Rectangle {
        color: '#0f3458'
        border.color:'#021a27'
        border.width: 1
       
        }
        


    }

    header: ToolBar {
        id: header
        width: parent.width
        height: 25
        leftPadding: 0
        rightPadding: 0
        topPadding: 0 
        bottomPadding: 0 
        RowLayout { 
        anchors.fill: parent 
        spacing:10
        Rectangle {
            anchors.fill: parent
            color: '#0f3458'
            border.color:'#021a27'
            border.width: 1
            //border.top:false

            Item { Layout.fillWidth: true }
                 Text {
                anchors.centerIn:parent
                text: "SONIX"
                color: "#2DEFD2"
                font.pointSize: 10
                font.bold: true
            }
            Item { Layout.fillWidth: true }

        }
        }
       
        
    }


    Rectangle{
        id: mainArea
        anchors.fill: parent
           color: '#021a27'


        Rectangle {
            id:leftSidebar
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            width: Math.min(parent.width * 0.3, 300)
            color: '#021a27'
            height: parent.height*0.90
            border.color:'#0f3458'
            border.width: 1
            radius: 6
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            

            // Sidebar content goes here   
        }

        
         Rectangle {
            id:middleArea
            color: '#021a27'
            
            height: parent.height
            anchors.left: leftSidebar.right
            anchors.right: rightSidebar.left
            
            ColumnLayout {
                anchors.fill: parent
                anchors.margins:10
                spacing:20

                Rectangle {
                    id:songCover
                    Layout.topMargin:50
                    Layout.alignment: Qt.AlignHCenter
                    color:Qt.rgba(0.06, 0.2, 0.35, 1)
                    Layout.preferredHeight:500
                    Layout.preferredWidth: 500
                    radius:10
                    //border.color:'#2defd2' 
                   // border.width:1

    layer.enabled: true
    layer.effect: DropShadow {
        horizontalOffset: 15
        verticalOffset: 15
        radius: 15
        samples: 31       // should be 2*radius + 1
        spread: 0.1
        color: '#80000000'
    }

                }

               RowLayout {
        Layout.fillWidth: true

        Text {
            text: "1 : 55"
            color: "#FFFFFF"
            font.pixelSize: 12
        }

        Item { Layout.fillWidth: true }   

        Text {
            text: "1 : 20"
            color: "#AAAAAA"
            font.pixelSize: 12
        }
    }

    
    Slider {

    property real playPosition: 0
    property real lastTick: Date.now()

    function tickPosition(maxDuration) {
        var now     = Date.now()
        var elapsed = (now - lastTick) / 1000
        lastTick    = now

        var drift = (Math.random() - 0.5)
        playPosition += elapsed + drift
        playPosition  = Math.max(0, Math.min(playPosition, maxDuration))

        return playPosition
    }


        id: seekBar
        Layout.fillWidth: true

        from:  0
        to:    100      

                Timer {
            interval: 1000
            running:  true
            repeat:   true
            onTriggered: seekBar.value = seekBar.tickPosition(seekBar.to)
        }


        background: Rectangle {
            x: seekBar.leftPadding
            y: seekBar.topPadding + seekBar.availableHeight / 2 - height / 2
            width:  seekBar.availableWidth
            height: 4
            radius: 2
            color: "#444444" 

        
            Rectangle {
                width:  seekBar.visualPosition * parent.width
                height: parent.height
                radius: parent.radius
                color: '#2DEFD2'
            }
        }

        
        handle: Rectangle {
            x: seekBar.leftPadding + seekBar.visualPosition
               * (seekBar.availableWidth - width)
            y: seekBar.topPadding  + seekBar.availableHeight / 2 - height / 2
            width:  16
            height: 16
            radius: 8           
            color:  seekBar.pressed ? "#FFFFFF" : "#2DEFD2"
            border.color: "#FFFFFF"
            border.width: 2
        }
    }


                  RowLayout{
                    Layout.alignment:Qt.AlignHCenter |Qt.AlignVTop
                    spacing:100
            
                    Item{
                        Icon{
                            imageSource:"qrc:/Myapp/resource/svg_icons/previous.svg"
                            mouseAction.onClicked:{
                                core.prev();
                            }
                            
                        }
                    }
                     Item{
                         property bool isPlaying: false
                        Icon{
                            imageSource:{
                            if(!isPlaying)
                                return "qrc:/Myapp/resource/svg_icons/pause.svg"
                            else
                            return "qrc:/Myapp/resource/svg_icons/play.svg"
                            }
                            mouseAction.onClicked:{
                            core.playPause();
                            isPlaying=!isPlaying;
                            }
                        }
                    }
                     Item{
                        Icon{
                            imageSource:"qrc:/Myapp/resource/svg_icons/next.svg"
                                mouseAction.onClicked:{
                                core.next();
                            }
                        }
                    }
                     Item { Layout.fillHeight: true }
                    }
                  
                   

            }
           
        }
              
        
         Rectangle {
            id:rightSidebar
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            width: Math.min(parent.width * 0.3, 300)
            color: '#021a27'
            height: parent.height*0.90
            border.color:'#0f3458'
            border.width: 1
            radius: 6
            anchors.rightMargin: 20
            anchors.bottomMargin: 20
    
        }
    }
    
    
        
    

    footer: ToolBar {
        id: footer
        
        background: Rectangle {
            color: '#021a27' 
            border.color: '#0f3458'
            border.width: 1
        }
        Text {
            padding: 10
            text: "© 2026 SONIX. All rights reserved."
            color: '#67868e'
            font.pointSize: 10
        }
    }


}
