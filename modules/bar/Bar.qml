import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland

Variants {
				model: Quickshell.screens

				PanelWindow {

								required property var modelData
								screen: modelData

								anchors {
												top: true
												left: true
												right: true
								}

								margins {
												top: 5
												//left: 5
												//right: 5
								}

								implicitHeight: 40

								exclusiveZone: 10

								color: "transparent"

								mask: Region {
												item: barRect
								}

								Rectangle {
												id: barRect

												width: 250
												height: 40

												anchors.horizontalCenter: parent.horizontalCenter
												anchors.top: parent.top

												//anchors.fill: parent
												
												//color: "#5E0096" // purple version
												color: "#85222222" // transparent version
												
												radius: 16
												//radius: 20

												border.color: "#ffffff"
												border.width: 2										

												Row {
																spacing: 20

																anchors.verticalCenter: parent.verticalCenter
																anchors.horizontalCenter: parent.horizontalCenter

																Image {
																				source: "nix.png"
																				sourceSize.width: 23

																				anchors.verticalCenter: parent.verticalCenter
																}

																Text { 
																				font.pixelSize: 19
																				color: "white"

																				text: Time.time

																				anchors.verticalCenter: parent.verticalCenter
																}

																Text {
																				font.pixelSize: 19
																				color: "white"

																				text: "100%"

																				anchors.verticalCenter: parent.verticalCenter
																}
												}
								}
				}
}
