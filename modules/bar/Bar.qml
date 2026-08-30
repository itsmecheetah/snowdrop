import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell.Hyprland

Variants {
				model: Quickshell.screens

				PanelWindow {
								id: window

								required property var modelData
								screen: modelData

								anchors {
												top: true
												left: false
												right: false
								}

								margins.top: 5

								//width: 260
								
								width: rowLayout.width + 40

								implicitHeight: 40

								exclusiveZone: 10

								color: "transparent"

								Rectangle {
												id: barRect
												
												anchors.fill: parent

												anchors.horizontalCenter: parent.horizontalCenter
												anchors.top: parent.top
												
												color: "#85222222"

												radius: 16

												border.color: "#ffffff"
												border.width: 2										

												RowLayout {
																id: rowLayout

																spacing: 10

																Layout.preferredWidth: 0

																anchors.verticalCenter: parent.verticalCenter
																anchors.horizontalCenter: parent.horizontalCenter

																Image {
																				source: "nix.png"
																				sourceSize.width: 23

																				anchors.verticalCenter: parent.verticalCenter
																}


																Button {
																				id: timeIndicator

																				background: Rectangle {
																								color: timeIndicator.hovered ? "#50000000" : "#00000000"
																								radius: 16
																				}

																				contentItem: Text {
																								font.pixelSize: 19
																								color: "white"

																								text: Time.time
																								anchors.verticalCenter: parent.verticalCenter
																				}

																				anchors.verticalCenter: parent.verticalCenter

																				flat: true
																				hoverEnabled: true

																				onClicked: popupLoader.item.visible = !popupLoader.item.visible

																				LazyLoader {
																								id: popupLoader

																								loading: true

																								PanelWindow {
																												visible: false

																												exclusiveZone: 0

																												color: "transparent"

																												anchors.top: true

																												width: rowLayout.width + 40
																												height: 100

																												margins.top: 40

																												Rectangle {
																																anchors.fill: parent
																																radius: 16

																																border.color: "white"
																																border.width: 2

																																color: "#85222222"
																																
																																Text {
																																				text: Time.date
																																				font.pixelSize: 25
																																				color: "white"

																																				anchors.verticalCenter: parent.verticalCenter
																																				anchors.horizontalCenter: parent.horizontalCenter
																																}
																												}
																								}
																				}
																}

																Button {
																				id: connectionIndicator

																				background: Rectangle {
																								color: connectionIndicator.hovered ? "#50000000" : "#00000000"
																								radius: 16
																				}

																				contentItem: Text {
																								font.pixelSize: 19
																								color: "white"

																								text: Connection.connectionStateWithExtras
																								anchors.verticalCenter: parent.verticalCenter
																				}

																				anchors.verticalCenter: parent.verticalCenter

																				flat: true
																				hoverEnabled: true

																}
												}
								}
				}
}
