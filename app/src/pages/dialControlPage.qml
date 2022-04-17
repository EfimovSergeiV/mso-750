import QtQuick 2.0
import "../sensors/dialControl"

Item {
    DialControl {
        id: circGauge
        width: 200
        height: 192
        anchors.verticalCenterOffset: -136
        anchors.horizontalCenterOffset: -194
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
        anchors.horizontalCenterOffset: 12
        anchors.verticalCenterOffset: -136
        value: 0
    }

    DialControl {
        id: circGauge2
        x: 5
        y: -2
        width: 200
        height: 192
        anchors.verticalCenterOffset: -136
        anchors.horizontalCenterOffset: 218
        value: 0
    }

    Connections {
        target: example

        function onPrintTime(time) {
            circGauge.value = time
            circGauge1.value = time
            circGauge2.value = time
        }
    }
}
