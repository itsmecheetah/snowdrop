// To make changes to your configuration, you should edit ~/.config/snowdrop-shell/config.json
pragma Singleton

import Quickshell
import Quickshell.Io

property alias topMargin: adapter.topMargin
property alias height: adapter.height
property alias exclusiveZoneOffset: adapter.exclusiveZoneOffset
property alias rounding: adapter.rounding
property alias borderWidth: adapter.borderWidth
property alias componentSpacing: adapter.componentSpacing
property alias componentSize: adapter.componentSize
property alias colors: adapter.colors

Singleton {
	FileView {
		path: "~/.config/snowdrop-shell/config.json"

		watchChanges: true
		onFileChanged: reload()
		onAdapterUpdated: writeAdapter()

		JsonAdapter {
			id: adapter

			property int topMargin: 5
			property int height: 40
			property int exclusiveZoneOffset: 20

			property real rounding: 16
			property int borderWidth: 2

			property real componentSpacing: 10
			property int componentSize: 19

			property JsonObject colors: JsonObject {
				property string background: "#85222222"
				property string border: "#ffffff"
				property string text: "#ffffff"
			}
		}
	}
}
