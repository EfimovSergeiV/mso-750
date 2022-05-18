import QtQuick 2.0
import QtQuick 2.2
import QtQuick.Extras 1.4

Item {
    layer.textureMirroring: ShaderEffectSource.MirrorVertically
    Rectangle {
        x: 0
        y: 0
        width: 290
        height: 100
        color: "#cccccc"

        StatusIndicator {
            width: 134
            height: 38
            anchors.centerIn: parent
            color: "green"
            focus: true
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

