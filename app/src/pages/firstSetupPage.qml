import QtQuick 2.15
import Qt.labs.qmlmodels 1.0
import QtDataVisualization 1.3
import QtCharts 2.3
import QtQuick3D 1.15
import QtQuick.Controls 2.15

Item {
    id: root

    TextField {
        id: textField11
        x: 65
        y: 61
        width: 216
        height: 28
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("0")
        font.family: "Proxima Nova"
    }

    Image {
        id: image3
        x: 360
        y: 397
        width: 80
        height: 40
        source: "./content/btn.png"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: parent
            onClicked: {
                activeFocusItem.text = activeFocusItem.text + "1"
                print(activeFocusItem, pressed)
                //                send("a")
                //                root.clicked('text')
            }
        }
    }

    TextField {
        id: textField12
        x: 65
        y: 101
        width: 216
        height: 28
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("0")
        font.family: "Proxima Nova"
    }

    TextField {
        id: textField13
        x: 65
        y: 144
        width: 216
        height: 28
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("0")
        font.family: "Proxima Nova"
    }

    TextField {
        id: textField14
        x: 65
        y: 186
        width: 216
        height: 28
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("0")
        font.family: "Proxima Nova"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}D{i:4}D{i:5}D{i:6}
}
##^##*/

