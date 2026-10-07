import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell.Hyprland

import "icon"
import "clock"
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
								Button {
                    id : connectionIndicator
										visible : Config.modules.connectivity.enabled
                    background : Rectangle {
                        color : connectionIndicator.hovered
                            ? "#50000000"
                            : "#00000000"
                        radius : 16
                    }
                    contentItem : Text {
                        font.pixelSize : Config.moduleSize
                        color : Config.colors.text
                        text : Connection.connectionStateWithExtras
                        anchors.verticalCenter : parent.verticalCenter
                    }
                    anchors.verticalCenter : parent.verticalCenter
                    flat : true
                    hoverEnabled : true
                    onClicked : {
                        connectionLoader.item.visible = !connectionLoader.item.visible
												dateLoader.item.visible = false
												sysinfoLoader.item.visible = false
												batteryLoader.item.visible = false
                    }
                    LazyLoader {
                        id : connectionLoader
                        loading : true
                        PanelWindow {
                            visible : false
                            exclusiveZone : 0
                            color : "transparent"
                            anchors.top : true
                            width : rowLayout.width + 40
                            height : 100
                            margins.top : 40
                            Rectangle {
                                anchors.fill : parent
                                radius : Config.rounding
                                border.color : Config.colors.border
                                border.width : Config.borderWidth
                                color : Config.colors.background
                                Text {
                                    color : Config.colors.text
                                    text : "i exclusively use \nethernet bc desktop\nso i'll do this if i get\na laptop (wifi selector)"
                                    font.pixelSize : Config.moduleSize
                                    anchors.verticalCenter : parent.verticalCenter
                                    anchors.horizontalCenter : parent.horizontalCenter
                                }
                            }
													}
												}
											}
								Battery {}
            }
        }
    }
}
