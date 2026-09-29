pragma Singleton

import Quickshell
import Quickshell.Services.UPower

Singleton {
	readonly property string currentPercentage: (UPower.displayDevice.percentage * 100) + "%"
	// TODO 
	// readonly property string currentProfile: 
}
