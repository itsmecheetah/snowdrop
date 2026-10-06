import Quickshell
import QtQuick
import QtQuick.Controls

import "../"

Button {
	visible: Config.modules.icon.enabled
	id: systemLogo

	background: Rectangle {
		color: systemLogo.hovered
			? "#50000000"
			: "#00000000"
		radius: 16
	}

	contentItem: Image {
		source: "../../../assets/icons/" + Config.modules.icon.selection
		sourceSize.width: Config.moduleSize + Config.modules.icon.sizeOffset
		anchors.verticalCenter: parent.verticalCenter
	}

	anchors.verticalCenter: parent.verticalCenter
	flat: true
	hoverEnabled: true

	onClicked: {
		sysinfoLoader.item.visible = !sysinfoLoader.item.visible
		connectionLoader.item.visible = false
		dateLoader.item.visible = false
		batteryLoader.item.visible = false
	}

	LazyLoader {
		id: sysinfoLoader
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
				radius: Config.rounding
				border.color: Config.colors.border
				border.width: Config.borderWidth
				color: Config.colors.background

				Text { 
					color: Config.colors.text
					font.pixelSize: 15
					text: "-"
					anchors.horizontalCenter: parent.horizontalCenter
					anchors.verticalCenter: parent.verticalCenter
				}
			}
		}
	}
}

