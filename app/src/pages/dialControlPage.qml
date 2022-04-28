import QtQuick 2.0
import QtQuick.Controls 2.15
import "../sensors/dialControl"

Item {
    DialControl {
        id: circGauge
        width: 200
        height: 192
        anchors.verticalCenterOffset: -83
        anchors.horizontalCenterOffset: -173
        x: 0
        y: 0
        value: 0
    }

    DialControl {
        id: circGauge1
        x: -1
        y: 5
        width: 200
        height: 192
        anchors.horizontalCenterOffset: 0
        anchors.verticalCenterOffset: -83
        value: 0
    }

    DialControl {
        id: circGauge2
        x: 5
        y: -2
        width: 200
        height: 192
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 168
        value: 0
    }

    Connections {
        target: example

        function onSensorOne(time) {
            circGauge1.value = time
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
