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
            height: 43
            color: "#00ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Label {
                id: label
                y: 0
                width: 265
                height: 33
                color: "#ffffff"
                text: "параметры корректора"
                anchors.left: parent.left
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 4
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                font.capitalization: Font.AllUppercase
                font.pointSize: 14
                font.bold: true
            }

            Button {
                id: button
                x: 609
                y: 8
                width: 183
                height: 33
                text: qsTr("клавиатура")
                anchors.right: parent.right
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                anchors.rightMargin: 4
                font.capitalization: Font.AllUppercase
                focus: false
                antialiasing: false
                font.pointSize: 14
                font.weight: Font.Normal
                font.bold: true
                autoExclusive: false
                onClicked: {
                    keyboardPanel.visible = !keyboardPanel.visible
                }
            }
        }

        Rectangle {
            id: rectangle2
            color: "#00ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle1.bottom
            anchors.bottom: rectangle3.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            Label {
                id: label1
                y: 0
                height: 21
                color: "#ffffff"
                text: qsTr("Номер участка")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                font.pointSize: 12
            }

            Row {
                id: row
                y: 27
                height: 31
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Label {
                    id: label2
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }

                Label {
                    id: label3
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }

                Label {
                    id: label4
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }

                Label {
                    id: label5
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }

                Label {
                    id: label6
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }

                Label {
                    id: label7
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }

                Label {
                    id: label8
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }

                Label {
                    id: label9
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }

                Label {
                    id: label10
                    color: "#ffffff"
                    text: qsTr("Label")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 14
                }
            }

            Label {
                id: label11
                y: 51
                height: 27
                color: "#ffffff"
                text: qsTr("Ток коррекции")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                font.pointSize: 12
            }

            Row {
                id: row1
                x: 8
                y: 84
                width: 784
                height: 26
                spacing: 4

                TextField {
                    id: textField
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField1
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField2
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField3
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField4
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField5
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField6
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField7
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField8
                    width: 75
                    placeholderText: qsTr("Text Field")
                }

                TextField {
                    id: textField9
                    width: 75
                    placeholderText: qsTr("Text Field")
                }
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

            Button {
                id: button1
                x: 660
                y: 4
                width: 132
                height: 36
                text: qsTr("выход")
                anchors.right: parent.right
                anchors.rightMargin: 4
                font.capitalization: Font.Capitalize
                font.pointSize: 14
                onClicked: {
                    stackView.push(Qt.resolvedUrl("mainPage.qml"))
                }
            }
        }


    }


    InputPanel {
        id: keyboardPanel
        visible: false
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
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:800}
}
##^##*/
