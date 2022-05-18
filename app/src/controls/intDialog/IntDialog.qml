import QtQuick 2.0
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "content"

Dialog {
    property string strData: ""
    property real realData: strData
    property string keyData: "progOne"

    function makeRealData(val) {
        strData = strData + val
    }

    id: root
    width: 350
    height: 420
    rightPadding: 0
    bottomPadding: 0
    padding: 0
    leftPadding: 0
    topPadding: 0
    margins: 0
    rightMargin: 0
    bottomMargin: 0
    leftMargin: 0
    topMargin: 0

    Rectangle {
        color: "#5D6973"
        anchors.fill: parent

        Label {
            id: valueShow
            x: 8
            y: 8
            width: 334
            height: 60
            color: "#ffffff"
            text: realData
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            font.bold: true
        }

        BlueBtn {
            id: button
            x: 8
            y: 332
            width: 166
            height: 80
            text: qsTr("0")
            font.pointSize: 14
            font.bold: true
            onClicked: makeRealData(0)
        }

        BlueBtn {
            id: button1
            x: 8
            y: 246
            width: 80
            height: 80
            text: qsTr("1")
            font.bold: true
            onClicked: makeRealData(1)
        }

        BlueBtn {
            id: button2
            x: 94
            y: 246
            width: 80
            height: 80
            text: qsTr("2")
            font.bold: true
            onClicked: makeRealData(2)
        }

        BlueBtn {
            id: button3
            x: 180
            y: 246
            width: 80
            height: 80
            text: qsTr("3")
            font.bold: true
            onClicked: makeRealData(3)
        }

        BlueBtn {
            id: button4
            x: 8
            y: 160
            width: 80
            height: 80
            text: qsTr("4")
            font.bold: true
            onClicked: makeRealData(4)
        }

        BlueBtn {
            id: button5
            x: 94
            y: 160
            width: 80
            height: 80
            text: qsTr("5")
            font.bold: true
            onClicked: makeRealData(5)
        }

        BlueBtn {
            id: button6
            x: 180
            y: 160
            width: 80
            height: 80
            text: qsTr("6")
            font.bold: true
            onClicked: makeRealData(6)
        }

        BlueBtn {
            id: button7
            x: 8
            y: 74
            width: 80
            height: 80
            text: qsTr("7")
            font.bold: true
            onClicked: makeRealData(7)
        }

        BlueBtn {
            id: button8
            x: 94
            y: 74
            width: 80
            height: 80
            text: qsTr("8")
            font.bold: true
            onClicked: makeRealData(8)
        }

        BlueBtn {
            id: button9
            x: 180
            y: 74
            width: 80
            height: 80
            text: qsTr("9")
            font.bold: true
            onClicked: makeRealData(9)
        }

        BlueBtn {
            id: button10
            x: 180
            y: 332
            width: 80
            height: 80
            text: qsTr(".")
            font.bold: true
            onClicked: makeRealData(".")
        }

        BlueBtn {
            id: button11
            x: 266
            y: 246
            width: 76
            height: 166
            text: qsTr("ВВОД")
            font.bold: true
            onClicked: {
                console.log({
                                "name": keyData,
                                "value": realData
                            })
                strData = 0
                keyData = ""
                root.close()
            }
        }

        BlueBtn {
            id: button12
            x: 266
            y: 160
            width: 76
            height: 80
            text: "НАЗАД"
            font.bold: true
            onClicked: {
                strData = ""
                root.close()
            }
        }

        BlueBtn {
            id: button13
            x: 266
            y: 74
            width: 76
            height: 80
            text: "<"
            font.bold: true
            onClicked: strData = strData.slice(0, -1)
        }
    }
}

/*##^##
Designer {
    D{i:0;height:420;width:350}
}
##^##*/

