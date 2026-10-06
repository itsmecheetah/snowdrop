pragma Singleton

import Quickshell
import Quickshell.Services.UPower

Singleton {
	readonly property string currentPercentage: (Math.round(UPower.displayDevice.percentage * 100)) + "%"
	
	readonly property string desiredColor: {
		if (UPower.displayDevice.percentage < 0.1) {
			return Config.colors.textCritical
		}
		return Config.colors.text
	}
	// TODO 
	// readonly property string currentProfile: 
}
