
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
    minimumWidth: 800
    minimumHeight: 600
    title: "SONIX"
    font.family: "Arial"
    font.pointSize: 12 
    color: '#021a27'

    menuBar: MenuBar {
        //color: "#0f3458"


    }

    header: ToolBar {
       // color: "#0f3458" 
        
    }


    Rectangle{
            anchors.fill: parent
           color: '#021a27'


        Rectangle {
            id:leftSidebar
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            width: 250
            color: '#021a27'
            height: parent.height*0.75
            border.color: "#2DEFD2"
            border.width: 1
            radius: 6
            maargins: 10
            

            // Sidebar content goes here   
        }
         Rectangle {
            id:mainContent
            color: '#021a27'
            height: parent.height
            anchors.left: leftSidebar.right
            anchors.right: rightSidebar.left
            
            
            // Sidebar content goes here   
        }
         Rectangle {
            id:rightSidebar
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            width: 250
            color: '#021a27'
            height: parent.height*0.75
            border.color: "#2DEFD2"
            border.width: 1
            radius: 6
            margins: 10
    
        }

    
    
        }
    

    footer: ToolBar {
        background: Rectangle {
            height:5
            color: '#021a27'
            border.color: "#2DEFD2"
            border.width: 1
        }
        
        
        }
}