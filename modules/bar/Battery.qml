pragma Singleton

import Quickshell
import Quickshell.Services.UPower

Singleton {
	readonly property string currentPercentage: (Math.round(UPower.displayDevice.percentage * 100)) + "%"
	
	readonly property string desiredColor: {
		if (UPower.displayDevice.percentage < Config.modules.battery.criticalThreshold) {
			return Config.colors.textCritical
		}
		return Config.colors.text
	}
	// TODO 
	// readonly property string currentProfile: 
}
