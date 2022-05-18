import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.0
import "../controls"

Item {
    id: item1
    Rectangle {
        id: rectangle
        color: "#aebfcd"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
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
            y: 72
            width: 230
            height: 50
            font.pointSize: 12
            font.styleName: "Regular"
            font.family: "Proxima Nova"
            text: qsTr("Визуализация")
            anchors.left: parent.left
            anchors.bottom: btnHome1.top
            anchors.bottomMargin: 21
            anchors.leftMargin: 0
            font.capitalization: Font.AllUppercase
            onClicked: {
                stackView.push(Qt.resolvedUrl("chartPage.qml"))
            }
        }

        BlueBtn {
            id: btnHome1
            x: 0
            y: 143
            width: 230
            height: 50
            text: qsTr("Программа сварки")
            anchors.left: parent.left
            anchors.bottom: btnHome2.top
            anchors.bottomMargin: 22
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
            y: 215
            width: 230
            height: 50
            text: qsTr("Установки")
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 215
            anchors.leftMargin: 0
            anchors.horizontalCenter: btnHome4.horizontalCenter
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
            y: 334
            width: 230
            height: 50
            text: qsTr("Программа 1")
            anchors.left: btnHome4.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 96
            anchors.horizontalCenter: btnHome4.horizontalCenter
            anchors.leftMargin: -230
            font.capitalization: Font.AllUppercase
            font.styleName: "Regular"
            font.pointSize: 12
            font.family: "Proxima Nova"
        }

        BlueBtn {
            id: btnHome4
            x: 0
            y: 409
            width: 230
            height: 50
            text: qsTr("Загрузка программы")
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 21
            font.capitalization: Font.AllUppercase
            font.styleName: "Regular"
            font.pointSize: 12
            font.family: "Proxima Nova"
        }

        BlueBtn {
            id: btnHome5
            x: 318
            y: 143
            width: 230
            height: 50
            text: qsTr("Пример 1")
            anchors.right: btnHome6.left
            anchors.bottom: btnHome7.top
            anchors.bottomMargin: 22
            anchors.rightMargin: 22
            font.capitalization: Font.AllUppercase
            font.pointSize: 12
            font.styleName: "Regular"
            font.family: "Proxima Nova"
            onClicked: {
                stackView.push(Qt.resolvedUrl("dialControlPage.qml"))
            }
        }

        BlueBtn {
            id: btnHome6
            x: 570
            y: 143
            width: 230
            height: 50
            text: qsTr("Пример 2")
            anchors.verticalCenter: btnHome5.verticalCenter
            anchors.right: parent.right
            anchors.bottom: btnHome8.top
            anchors.rightMargin: 0
            anchors.bottomMargin: 22
            font.capitalization: Font.AllUppercase
            font.pointSize: 12
            font.styleName: "Regular"
            font.family: "Proxima Nova"
        }

        BlueBtn {
            id: btnHome7
            x: 318
            y: 215
            width: 230
            height: 50
            text: qsTr("Пример 3")
            anchors.right: btnHome8.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 215
            anchors.rightMargin: 22
            anchors.horizontalCenter: btnHome5.horizontalCenter
            font.capitalization: Font.AllUppercase
            font.pointSize: 12
            font.styleName: "Regular"
            font.family: "Proxima Nova"
        }

        BlueBtn {
            id: btnHome8
            x: 570
            y: 215
            width: 230
            height: 50
            text: qsTr("Пример 4")
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.bottomMargin: 215
            anchors.horizontalCenter: btnHome6.horizontalCenter
            font.capitalization: Font.AllUppercase
            font.pointSize: 12
            font.styleName: "Regular"
            font.family: "Proxima Nova"
        }

        Image {
            id: image
            x: 432
            y: 359
            width: 360
            height: 121
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            source: "../content/logotype.png"
            anchors.bottomMargin: 0
            anchors.rightMargin: 8
            fillMode: Image.PreserveAspectFit
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}
}
##^##*/

