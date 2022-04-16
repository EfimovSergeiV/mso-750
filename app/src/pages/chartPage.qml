import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Label {
            id: label
            x: 302
            y: 194
            color: "#ffffff"
            text: qsTr("ShartPage")
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 16
        }

        Button {
            id: goMain
            x: 619
            y: 419
            width: 173
            height: 53
            text: "НАЗАД"
            checkable: false
            autoExclusive: false
            checked: false
            focus: false
            font.bold: true
            font.pointSize: 14
            onClicked: {
                stackView.push(Qt.resolvedUrl("mainPage.qml"))
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}D{i:3}
}
##^##*/
