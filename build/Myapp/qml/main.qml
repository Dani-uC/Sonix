
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
        background:Rectangle {
            anchors.top: parent.top
            color: '#021a27'
            border.color:'#0f3458'
            border.width: 1
       
        }
        //color: "#0f3458"


    }

    header: ToolBar {
        background: Rectangle {
            color: '#021a27' 
            border.color: '#0f3458'
            border.width: 1
                 Text {
                anchors.centerIn: parent
                anchors.top: parent.top
                text: "SONIX"
                color: "#2DEFD2"
                font.pointSize: 10
                //font.bold: true
            }

        }
     
       // color: "#0f3458" 
        
    }


    Rectangle{
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
            id:mainContent
            color: '#021a27'
            height: parent.height
            anchors.left: leftSidebar.right
            anchors.right: rightSidebar.left
            
            
            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 20
                spacing: 20
            

                RowLayout {
                    spacing: 20

                    Rectangle {
                    Layout.preferredHeight: 500
                    Layout.fillWidth: true
                    Layout.margins: 10
                    color: '#0f3458'
                    radius: 6

                     Image {
                    source: "qrc:/Myapp/resource/svg_icons/next.svg"
                    width: 32
                    height: 32
                    fillMode: Image.PreserveAspectFit
                    Layout.margins: 10
                }
                    }

                   
                }

                RowLayout {
                    spacing: 20

                        Icons {
                    source:  "Myapp/resource/svg_icons/next.svg"
                    Layout.margins: 10
                }
                     Icons {
                    source:  "Myapp/resource/svg_icons/next.svg"
                    Layout.margins: 10
                }
                     Icons {
                    source:  "Myapp/resource/svg_icons/next.svg"
                    Layout.margins: 10
                }
               
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
        
        background: Rectangle {
            color: '#021a27' 
            border.color: '#0f3458'
            border.width: 1
        }
        Text {
            padding: 10
            text: "© 2024 SONIX. All rights reserved."
            color: "#333333"
            font.pointSize: 10
        }
    }


}