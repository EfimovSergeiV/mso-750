import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.2
import "../controls"

Item {
    Rectangle {
        id: rectangle
        color: "#aebfcd"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Label {
            id: label1
            y: 0
            height: 24
            color: "#004f90"
            text: "Система управления сварочной машиной"
            anchors.left: parent.left
            anchors.right: parent.right
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            styleColor: "#ffffff"
            font.bold: false
        }

        Label {
            id: label
            height: 36
            color: "#004f90"
            text: qsTr("МСО-750")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: label1.bottom
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 6
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            font.bold: true
            font.pointSize: 24
            font.family: "Proxima Nova"
        }

        BlueBtn {
            id: btnHome
            x: 0
            y: 115
            width: 230
            height: 50
            font.pointSize: 12
            font.styleName: "Regular"
            font.family: "Proxima Nova"
            text: qsTr("Визуализация")
            anchors.left: parent.left
            anchors.right: btnHome1.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            font.capitalization: Font.AllUppercase
            onClicked: {
                stackView.push(Qt.resolvedUrl("chartPage.qml"))
            }
        }

        BlueBtn {
            id: btnHome1
            x: 0
            y: 187
            width: 230
            height: 50
            text: qsTr("Программа сварки")
            anchors.left: parent.left
            anchors.leftMargin: 0
            font.capitalization: Font.AllUppercase
            font.styleName: "Regular"
            font.pointSize: 12
            font.family: "Proxima Nova"
            onClicked: {
                stackView.push(Qt.resolvedUrl("correctorParamPage.qml"))
            }
        }

        BlueBtn {
            id: btnHome2
            x: 8
            y: 256
            width: 230
            height: 50
            text: qsTr("Установки")
            anchors.left: parent.left
            anchors.right: btnHome1.right
            anchors.rightMargin: 0
            anchors.horizontalCenter: btnHome4.horizontalCenter
            anchors.leftMargin: 0
            font.capitalization: Font.AllUppercase
            font.styleName: "Regular"
            font.pointSize: 12
            font.family: "Proxima Nova"
            onClicked: {
                stackView.push(Qt.resolvedUrl("settingsPage.qml"))
            }
        }

        BlueBtn {
            id: btnHome3
            x: 8
            y: 359
            width: 230
            height: 50
            text: qsTr("Программа 1")
            anchors.left: parent.left
            anchors.right: btnHome.right
            anchors.rightMargin: 0
            anchors.horizontalCenter: btnHome4.horizontalCenter
            anchors.leftMargin: 0
            font.capitalization: Font.AllUppercase
            font.styleName: "Regular"
            font.pointSize: 12
            font.family: "Proxima Nova"
        }

        BlueBtn {
            id: btnHome4
            x: 0
            y: 430
            width: 230
            height: 50
            text: qsTr("Загрузка программы")
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            font.capitalization: Font.AllUppercase
            font.styleName: "Regular"
            font.pointSize: 12
            font.family: "Proxima Nova"
        }

        Image {
            id: image
            x: 432
            y: 359
            width: 360
            height: 121
            anchors.right: parent.right
            anchors.top: btnHome3.top
            anchors.bottom: parent.bottom
            source: "../content/logotype.png"
            anchors.rightMargin: 8
            anchors.bottomMargin: 8
            anchors.topMargin: 8
            fillMode: Image.PreserveAspectFit
        }

    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}D{i:3}
}
##^##*/
