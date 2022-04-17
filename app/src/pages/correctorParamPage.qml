import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.1
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

        Rectangle {
            id: rectangle1
            height: 16
            color: "#00ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Label {
                id: label
                text: qsTr("Параметры корректора")
                anchors.left: parent.left
                anchors.right: label1.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 2
                anchors.leftMargin: 4
                font.styleName: "Regular"
                font.family: "Proxima Nova"
            }

            Label {
                id: label1
                x: 400
                width: 400
                text: qsTr("Номер участка")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                anchors.rightMargin: 4
                anchors.bottomMargin: 0
                anchors.topMargin: 0
            }
        }

        Rectangle {
            id: rectangle2
            color: "#939393"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle1.bottom
            anchors.bottom: rectangle3.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 180
            anchors.topMargin: 0

            Row {
                id: row
                height: 13
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                spacing: 3
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                anchors.topMargin: 0

                Label {
                    id: label2
                    width: 76
                    text: qsTr("1")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label3
                    width: 76
                    text: qsTr("2")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label4
                    width: 76
                    text: qsTr("3")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label5
                    width: 76
                    text: qsTr("4")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label6
                    width: 76
                    text: qsTr("5")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label7
                    width: 76
                    text: qsTr("6")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label8
                    width: 76
                    text: qsTr("7")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label9
                    width: 76
                    text: qsTr("8")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label10
                    width: 76
                    text: qsTr("9")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label11
                    width: 76
                    text: qsTr("10")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }
            }

            Label {
                id: label12
                height: 14
                text: qsTr("Ток коррекции (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 8
                font.family: "Proxima Nova"
                anchors.topMargin: 0
                anchors.rightMargin: 8
                anchors.leftMargin: 8
            }

            Row {
                id: row1
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label12.bottom
                spacing: 4
                anchors.topMargin: 0
                anchors.rightMargin: 8
                anchors.leftMargin: 8

                TextField {
                    id: textField
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField4
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField5
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField6
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField7
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField8
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField9
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }
            }

            Label {
                id: label13
                height: 14
                text: qsTr("Ток останова (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row1.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 8
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                anchors.topMargin: 0
                font.styleName: "Regular"
                font.family: "Proxima Nova"
            }

            Row {
                id: row2
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label13.bottom
                anchors.rightMargin: 8
                spacing: 4
                TextField {
                    id: textField10
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField11
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField12
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField13
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField14
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField15
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField16
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField17
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField18
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField19
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.topMargin: 0
                anchors.leftMargin: 8
            }

            Label {
                id: label14
                height: 14
                text: qsTr("Ток реверса (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row2.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                font.pointSize: 8
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                anchors.topMargin: 0
            }

            Row {
                id: row3
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label14.bottom
                anchors.rightMargin: 8
                spacing: 4
                TextField {
                    id: textField20
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField21
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField22
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField23
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField24
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField25
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField26
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField27
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField28
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField29
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.topMargin: 0
                anchors.leftMargin: 8
            }

            Label {
                id: label15
                height: 14
                text: qsTr("Ток К.З. (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row3.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                font.pointSize: 8
                anchors.topMargin: 0
                anchors.rightMargin: 8
                anchors.leftMargin: 8
            }

            Row {
                id: row4
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label15.bottom
                anchors.rightMargin: 8
                spacing: 4
                TextField {
                    id: textField30
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField31
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField32
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField33
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField34
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField35
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField36
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField37
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField38
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField39
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.topMargin: 0
                anchors.leftMargin: 8
            }
            
        }

        Rectangle {
            id: rectangle3
            y: 436
            height: 44
            color: "#00ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0

            BlueBtn {
                id: blueBtn
                x: 632
                y: 4
                width: 164
                height: 36
                text: "Выход"
                anchors.right: parent.right
                font.bold: true
                font.family: "Proxima Nova"
                anchors.rightMargin: 4
                onClicked: {
                    stackView.push(Qt.resolvedUrl("mainPage.qml"))
                }
            }
        }


    }


    InputPanel {
        id: keyboardPanel
        visible: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        width: 700
        Component.onCompleted: {
            keyboard.style.keyboardBackground = null;        // the keyboard background
            keyboard.style.selectionListBackground = null;   // the horizontal bar at the
        }
        //        Component.onCompleted: console.log(Object.keys(keyboardPanel.keyboard.style).sort())
        //        qml: [alternateKeysListBackground,alternateKeysListBackgroundChanged,alternateKeysListBottomMargin,alternateKeysListBottomMarginChanged,alternateKeysListDelegate,alternateKeysListDelegateChanged,alternateKeysListHighlight,alternateKeysListHighlightChanged,alternateKeysListItemHeight,alternateKeysListItemHeightChanged,alternateKeysListItemWidth,alternateKeysListItemWidthChanged,alternateKeysListLeftMargin,alternateKeysListLeftMarginChanged,alternateKeysListRightMargin,alternateKeysListRightMarginChanged,alternateKeysListTopMargin,alternateKeysListTopMarginChanged,backspaceKeyPanel,backspaceKeyPanelChanged,characterPreviewDelegate,characterPreviewDelegateChanged,characterPreviewMargin,characterPreviewMarginChanged,compactSelectionList,compactSelectionListChanged,enterKeyPanel,enterKeyPanelChanged,fontFamily,fontFamilyChanged,fullScreenInputBackground,fullScreenInputBackgroundChanged,fullScreenInputColor,fullScreenInputColorChanged,fullScreenInputContainerBackground,fullScreenInputContainerBackgroundChanged,fullScreenInputCursor,fullScreenInputCursorChanged,fullScreenInputFont,fullScreenInputFontChanged,fullScreenInputMargins,fullScreenInputMarginsChanged,fullScreenInputPadding,fullScreenInputPaddingChanged,fullScreenInputPasswordCharacter,fullScreenInputPasswordCharacterChanged,fullScreenInputSelectedTextColor,fullScreenInputSelectedTextColorChanged,fullScreenInputSelectionColor,fullScreenInputSelectionColorChanged,handwritingKeyPanel,handwritingKeyPanelChanged,hideKeyPanel,hideKeyPanelChanged,inputLocale,inputLocaleChanged,inputLocaleIndicatorColor,inputLocaleIndicatorColorChanged,inputLocaleIndicatorHighlightTimer,inputLocaleIndicatorHighlightTimerChanged,keyBackgroundMargin,keyBackgroundMarginChanged,keyContentMargin,keyContentMarginChanged,keyIconScale,keyIconScaleChanged,keyPanel,keyPanelChanged,keyboardBackground,keyboardBackgroundChanged,keyboardDesignHeight,keyboardDesignHeightChanged,keyboardDesignWidth,keyboardDesignWidthChanged,keyboardHeight,keyboardHeightChanged,keyboardRelativeBottomMargin,keyboardRelativeBottomMarginChanged,keyboardRelativeLeftMargin,keyboardRelativeLeftMarginChanged,keyboardRelativeRightMargin,keyboardRelativeRightMarginChanged,keyboardRelativeTopMargin,keyboardRelativeTopMarginChanged,languageKeyPanel,languageKeyPanelChanged,languageListAdd,languageListAddChanged,languageListBackground,languageListBackgroundChanged,languageListDelegate,languageListDelegateChanged,languageListHighlight,languageListHighlightChanged,languageListRemove,languageListRemoveChanged,languagePopupListEnabled,languagePopupListEnabledChanged,modeKeyPanel,modeKeyPanelChanged,navigationHighlight,navigationHighlightChanged,objectName,objectNameChanged,popupListAdd,popupListAddChanged,popupListBackground,popupListBackgroundChanged,popupListDelegate,popupListDelegateChanged,popupListHighlight,popupListHighlightChanged,popupListRemove,popupListRemoveChanged,resourcePrefix,resourcePrefixChanged,scaleHint,scaleHintChanged,selectionHandle,selectionHandleChanged,selectionListAdd,selectionListAddChanged,selectionListBackground,selectionListBackgroundChanged,selectionListDelegate,selectionListDelegateChanged,selectionListHeight,selectionListHeightChanged,selectionListHighlight,selectionListHighlightChanged,selectionListRemove,selectionListRemoveChanged,shiftKeyPanel,shiftKeyPanelChanged,spaceKeyPanel,spaceKeyPanelChanged,symbolKeyPanel,symbolKeyPanelChanged,traceCanvasDelegate,traceCanvasDelegateChanged,traceInputKeyPanelDelegate,traceInputKeyPanelDelegateChanged]
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:800}D{i:3}D{i:4}D{i:6}D{i:18}
D{i:30}D{i:42}D{i:54}
}
##^##*/
