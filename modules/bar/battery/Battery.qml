import Quickshell
import QtQuick
import QtQuick.Controls

import "../"

Button {
	id: batteryIndicator
	visible: Config.modules.battery.enabled

	background: Rectangle {
		color: batteryIndicator.hovered
			? "#50000000"
			: "#00000000"
		radius: 16
	}

	contentItem: Text {
		font.pixelSize: Config.moduleSize
		color: Battery.desiredColor
		text: Battery.currentPercentage
		anchors.verticalCenter: parent.verticalCenter
	}

	anchors.verticalCenter: parent.verticalCenter
	flat: true
	hoverEnabled: true
	
	onClicked: {
		batteryLoader.item.visible = !batteryLoader.item.visible
		connectionIndicator.item.visible = false
		dateLoader.item.visible = false
		sysinfoLoader.item.visible = false
	}

	LazyLoader {
		id: batteryLoader
		loading: true

		PanelWindow  {
			visible: false
			exclusiveZone: 0
			color: "transparent"
			anchors.top: true
			width: rowLayout.width + 40
			height: 100
			margins.top:  40

			Rectangle {
				anchors.fill: parent
				radius: Config.rounding
				border.color: Config.colors.border
				border.width: Config.borderWidth
				color: Config.colors.background

				Text {
					color: Config.colors.text
					text: "-"
					font.pixelSize: Config.moduleSize
					anchors.verticalCenter: parent.verticalCenter
					anchors.horizontalCenter: parent.horizontalCenter
				}
			}
		}
	}
}
