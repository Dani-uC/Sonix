
/*
'#021a27'
'#2DEFD2'
'#0f3458'


*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: window
    visible: true
    width: 1024
    height: 768
    minimumWidth: 1106
    minimumHeight: 600
    title: "SONIX"
    font.family: "Arial"
    font.pointSize: 12 
    color: '#021a27'

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
        //color: "#0f3458"


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
       // color: "#0f3458" 
        
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
                   // Layout.topMargin:mainArea.height - rightSidebar.height
                    Layout.alignment: Qt.AlignHCenter
                    color:'#0f3458'
                    Layout.preferredHeight:500
                    Layout.preferredWidth: 500
                    radius:10

                }
              /*  Item {
                    Layout.alignment:Qt.AlignTop
                    anchors.topMargin:30
                    Layout.fillWidth:true
                    Layout.fillHeight:true
                }*/
                  RowLayout{
                    Layout.alignment:Qt.AlignHCenter
                    spacing:100
            
                   // Item { Layout.fillWidth: true }
                    Item{
                        Icon{
                            imageSource:"qrc:/Myapp/resource/svg_icons/previous.svg"
                        }
                    }
                     Item{
                        Icon{
                            imageSource:"qrc:/Myapp/resource/svg_icons/play.svg"
                        }
                    }
                     Item{
                        Icon{
                            imageSource:"qrc:/Myapp/resource/svg_icons/next.svg"
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