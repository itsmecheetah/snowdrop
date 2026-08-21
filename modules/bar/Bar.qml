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

								margins {
												left: 1000
												right: 1000
												top: 10
												bottom: 0
								}

								exclusiveZone: 10

								color: "transparent"
								implicitHeight: 40

								Rectangle {
												color: "#5E0096"
												anchors.fill: parent
												
												radius: 20

												border.color: "#ffffff"
												border.width: 2
								}
				}
}
