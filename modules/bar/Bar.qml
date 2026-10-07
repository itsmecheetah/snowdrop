import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell.Hyprland

import "icon"
import "clock"
import "connection"
import "battery"

Variants {
    model : Quickshell.screens
    PanelWindow {
        id : window
        required property var modelData
        screen : modelData
        anchors {
            top : true
            left : false
            right : false
        }
        margins.top : Config.topMargin // width: 260
        width : rowLayout.width + 40
        implicitHeight : Config.height
        exclusiveZone : (implicitHeight - Config.exclusiveZoneOffset) / 2
        color : "transparent"
        Rectangle {
            id : barRect
            anchors.fill : parent
            anchors.horizontalCenter : parent.horizontalCenter
            anchors.top : parent.top
            color : Config.colors.background
            radius : Config.rounding
            border.color : Config.colors.border
            border.width : Config.borderWidth
            RowLayout {
                id : rowLayout
                spacing : Config.moduleSpacing
                Layout.preferredWidth : 0
                anchors.verticalCenter : parent.verticalCenter
								anchors.horizontalCenter : parent.horizontalCenter
								Icon {}
								Clock {}
								Connection {}
								Battery {}
            }
        }
    }
}
