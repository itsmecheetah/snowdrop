// WARNING: Not yet implemented

// To make changes to your configuration, you should edit ~/.config/snowdrop-shell/config.json

import Quickshell
import Quickshell.Io

FileView {
	path: "~/.config/snowdrop-shell/config.json"

	watchChanges: true
	onFileChanged: reload()
	onAdapterUpdated: writeAdapter()

	JsonAdapter {
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
