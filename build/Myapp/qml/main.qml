import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 1200
    height: 800

    Rectangle {
        anchors.fill: parent
        color: "#101820"

        ColumnLayout {
            anchors.centerIn: parent
            width: parent.width
            spacing: parent.height * 0.04

            Item {
                Layout.fillHeight: true
            }

            Rectangle {
                id: songCover

                Layout.alignment: Qt.AlignHCenter

                Layout.preferredWidth:
                    Math.min(parent.width * 0.35, 500)

                Layout.preferredHeight: width

                Layout.minimumWidth: 150
                Layout.minimumHeight: 150

                radius: width * 0.05
                color: "#204060"
            }

            RowLayout {
                Layout.alignment: Qt.AlignHCenter

                spacing: parent.width * 0.05

                Icon { imageSource:"qrc:/Myapp/resource/svg_icons/previous.svg" }
                Icon { imageSource: "qrc:/Myapp/resource/svg_icons/play.svg"}
                Icon { imageSource: "qrc:/Myapp/resource/svg_icons/next.svg" }
            }

            Item {
                Layout.fillHeight: true
            }
        }
    }
}