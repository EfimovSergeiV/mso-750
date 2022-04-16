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
            height: 22
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
                width: 260
                height: 22
                color: "#000000"
                text: "параметры корректора"
                anchors.left: parent.left
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 4
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                font.capitalization: Font.AllUppercase
                font.pointSize: 12
                font.bold: true
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
                color: "#000000"
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
                spacing: 38
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            Label {
                id: label11
                y: 51
                height: 27
                color: "#000000"
                text: qsTr("Ток коррекции")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                font.pointSize: 12
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
