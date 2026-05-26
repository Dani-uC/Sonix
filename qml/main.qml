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
    title: "Desktop Application Template"

    // 1. SYSTEM MENU BAR
    menuBar: MenuBar {


    }

    // 2. TOP TOOLBAR
    header: ToolBar {
        
    }


    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal   
        }

    
    
        
    

    footer: ToolBar {
        

            }
           }