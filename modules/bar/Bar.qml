import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Layouts

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

								exclusiveZone: 15

								color: "transparent"
								implicitHeight: 60

								Rectangle {
												width: 200
												height: 40

												anchors.horizontalCenter: parent.horizontalCenter
												anchors.top: parent.top

												//color: "#5E0096" // purple version
												color: "#85222222" // transparent version
												
												radius: 20

												border.color: "#ffffff"
												border.width: 2

												anchors.topMargin: 5

												Row {
																spacing: 10

																anchors.verticalCenter: parent.verticalCenter
																anchors.horizontalCenter: parent.horizontalCenter

																Text {

																				font.pixelSize: 21
																				color: "white"

																				text: "hh:mm"
																}
												}
								}
				}
}
