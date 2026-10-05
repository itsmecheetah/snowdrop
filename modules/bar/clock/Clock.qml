import Quickshell
import QtQuick
import QtQuick.Controls

import "../"

Button {
	id: timeIndicator
	visible: Config.modules.clock.enabled

	background: Rectangle {
		color: timeIndicator.hovered
			? "#50000000"
			: "#00000000"
		radius: 16
	}

	contentItem: Text {
		font.pixelSize: Config.moduleSize
		color: Config.colors.text
		text: Time.time
		anchors.verticalCenter: parent.verticalCenter
	}

	anchors.verticalCenter: parent.verticalCenter
	flat: true
	hoverEnabled: true

	onClicked: {
		dateLoader.item.visible = !dateLoader.item.visible
		connectionLoader.item.visible = false
		sysinfoLoader.item.visible = false
		batteryLoader.item.visible = false
	}

	LazyLoader {
		id: dateLoader
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
					text: Time.date
					font.pixelSize: 25
					color: Config.colors.text

					anchors.verticalCenter: parent.verticalCenter
					anchors.horizontalCenter: parent.horizontalCenter
				}
			}
		}
	}
}
