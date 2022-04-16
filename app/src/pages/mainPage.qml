import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.2

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Label {
            id: label1
            x: 0
            y: 0
            width: 800
            height: 24
            color: "#ffffff"
            text: "Система управления сварочной машиной"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            styleColor: "#ffffff"
            font.bold: false
        }

        Button {
            id: button
            x: 21
            y: 77
            width: 230
            height: 50
            text: qsTr("ВИЗУАЛИЗАЦИЯ")
            checkable: false
            autoExclusive: false
            checked: false
            focus: false
            font.bold: true
            font.pointSize: 14
            onClicked: {
                stackView.push(Qt.resolvedUrl("chartPage.qml"))
            }
        }

        Button {
            id: button1
            x: 21
            y: 148
            width: 230
            height: 50
            text: qsTr("ПРОГРАММА")
            font.bold: true
            font.pointSize: 14
            onClicked: {
                stackView.push(Qt.resolvedUrl("correctorParamPage.qml"))
            }
        }

        Button {
            id: button2
            x: 21
            y: 221
            width: 230
            height: 50
            text: qsTr("УСТАНОВКИ")
            font.bold: true
            font.pointSize: 14
            onClicked: {
                stackView.push(Qt.resolvedUrl("chartPage.qml"))
            }
        }

        Button {
            id: button3
            x: 21
            y: 407
            width: 230
            height: 50
            text: qsTr("ЗАГРУЗКА ПРОГРАММЫ")
            font.bold: true
            font.pointSize: 14
            onClicked: {
                stackView.push(Qt.resolvedUrl("chartPage.qml"))
            }
        }

        Button {
            id: button4
            x: 21
            y: 338
            width: 230
            height: 50
            text: "ПРОГРАММА 1"
            font.bold: true
            font.pointSize: 14
            onClicked: {
                stackView.push(Qt.resolvedUrl("chartPage.qml"))
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}D{i:2}D{i:4}D{i:5}D{i:6}D{i:7}
}
##^##*/
