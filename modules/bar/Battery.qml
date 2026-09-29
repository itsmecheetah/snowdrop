pragma Singleton

import Quickshell
import Quickshell.Services.UPower

Singleton {
	readonly property string currentPercentage: (Math.round(UPower.displayDevice.percentage * 100)) + "%"
	// TODO 
	// readonly property string currentProfile: 
}
