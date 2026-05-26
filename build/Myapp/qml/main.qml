/*import QtQuick 2.15
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
        id:openDrawerButton
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

    }

    Icons{
        id:icon
        anchors.top:openDrawerButton.bottom
        source:"qrc:/Myapp/resource/svg_icons/play.svg"
    }
}


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
    title: "Desktop Application Template"

    // 1. SYSTEM MENU BAR
    menuBar: MenuBar {
        Menu {
            title: "File"
            Action { text: "New Project..."; shortcut: "Ctrl+N" }
            Action { text: "Open..."; shortcut: "Ctrl+O" }
            MenuSeparator {}
            Action { text: "Exit"; shortcut: "Alt+F4"; onTriggered: Qt.quit() }
        }
        Menu {
            title: "Edit"
            Action { text: "Undo"; shortcut: "Ctrl+Z" }
            Action { text: "Redo"; shortcut: "Ctrl+Y" }
        }
    }

    // 2. TOP TOOLBAR
    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            spacing: 10
            
            ToolButton { text: "◀"; onClicked: console.log("Back") }
            ToolButton { text: "Save" }
            ToolButton { text: "Settings" }
            
            // Pushes everything after this to the far right
            Item { Layout.fillWidth: true } 
            
            TextField {
                placeholderText: "Search..."
                Layout.preferredWidth: 200
                Layout.rightMargin: 10
            }
        }
    }

    // 3. MAIN BODY (Sidebar + Content View)
    // SplitView allows the user to drag and resize the sidebar
    SplitView {
        anchors.fill: parent
        orientation: Qt.Horizontal

        // Left Navigation Sidebar
        Rectangle {
            id: sidebar
            SplitView.preferredWidth: 250
            SplitView.minimumWidth: 150
            SplitView.maximumWidth: 400
            color: "#f5f5f7"

            ListView {
                anchors.fill: parent
                model: ["Dashboard", "Projects", "Analytics", "Settings"]
                delegate: ItemDelegate {
                    width: parent.width
                    text: modelData
                    highlighted: ListView.isCurrentItem
                    onClicked: parent.currentIndex = index
                }
            }
        }

        // Right Main Content Area
        Rectangle {
            id: mainContent
            SplitView.fillWidth: true
            color: "#ffffff"

            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 30
                spacing: 20

                Label {
                    text: "Welcome to the Main View"
                    font.pixelSize: 24
                    font.bold: true
                }

                Label {
                    text: "This area resizes dynamically when you scale the application window or drag the sidebar splitter."
                    font.pixelSize: 14
                    color: "gray"
                    Layout.fillWidth: true
                    wrapMode: Text.WordWrap
                }

                // Placeholder for grid data / charts / forms
                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: "#f9f9f9"
                    border.color: "#e0e0e0"
                    radius: 4
                }
            }
        }
    }

    // 4. BOTTOM STATUS BAR
    // 4. BOTTOM STATUS BAR (Corrected for Qt 6)
    footer: ToolBar {
        id: statusBar
        
        // Match the traditional subtle look of a status bar
        background: Rectangle {
            color: "#f0f0f0" 
            border.color: "#d0d0d0"
            border.width: 1
        }

        RowLayout {
            anchors.fill: parent
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            
            Label { 
                text: "Ready" 
                font.pixelSize: 12
                color: "#333333"
            }
            
            // Pushes the next elements to the right
            Item { Layout.fillWidth: true }
            
            Label { 
                text: "Line 1, Col 1  |  UTF-8" 
                font.pixelSize: 12
                color: "#555555"
            }
        }
    }
}