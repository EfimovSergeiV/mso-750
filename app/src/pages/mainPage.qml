import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.2
import "../controls"

Item {
    Rectangle {
        id: rectangle
        color: "#ffffff"
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
            height: 17
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
            font.pointSize: 14
            font.family: "Proxima Nova"
        }

        BlueBtn {
            id: btnHome
            x: 8
            y: 64
            width: 230
            height: 50
            font.pointSize: 12
            font.styleName: "Regular"
            font.family: "Proxima Nova"
            text: qsTr("Визуализация")
            font.capitalization: Font.AllUppercase
            onClicked: {
                stackView.push(Qt.resolvedUrl("chartPage.qml"))
            }
        }

        BlueBtn {
            id: btnHome1
            x: 8
            y: 138
            width: 230
            height: 50
            text: qsTr("Программа сварки")
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
            y: 215
            width: 230
            height: 50
            text: qsTr("Установки")
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
            y: 347
            width: 230
            height: 50
            text: qsTr("Программа 1")
            font.capitalization: Font.AllUppercase
            font.styleName: "Regular"
            font.pointSize: 12
            font.family: "Proxima Nova"
        }

        BlueBtn {
            id: btnHome4
            x: 8
            y: 422
            width: 230
            height: 50
            text: qsTr("Загрузка программы")
            font.capitalization: Font.AllUppercase
            font.styleName: "Regular"
            font.pointSize: 12
            font.family: "Proxima Nova"
        }

    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}D{i:3}
}
##^##*/
