import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: button
    text: "A Special Button"

    contentItem: Text {
        text: button.text
        font: button.font
        opacity: enabled ? 1.0 : 0.3
        color: button.down ? "#ffffff" : "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 60
        color: button.down ? "#143656" : "#004F90"
        border.color: "#004F90"
        border.width: 1
        radius: 1
        //        layer.enabled: control.enabled && control.MyStyle.elevation > 0
    }
}
