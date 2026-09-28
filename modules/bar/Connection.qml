pragma Singleton
import Quickshell
import QtQuick
import Quickshell.Networking

Singleton {
    id : root // gets the current NetworkDevice. if null, that means there is no connection whatsoever.
    readonly property NetworkDevice currentDevice : {
        for (const device of Networking.devices.values) {
            if (device.connected) 
                return device
            
        }
        return null
    }
    readonly property WifiNetwork currentWifiNetwork : {
        if (currentDevice === null || currentDevice.type !== DeviceType.Wifi) 
            return null
        
        for (const network of currentDevice.networks.values) {
            if (network.connected) 
                return network
            
        }
    } // basically return a shorter version of ConnectionState.toString(currentDevice), with ConnectionState.Connected being replaced with more relevant information
    readonly property string connectionStateWithExtras : {
        if (currentDevice === null) {
            return "Disconnected"
        }
        return currentDevice.state === ConnectionState.Connecting
            ? "Connecting"
            : currentDevice.state === ConnectionState.Disconnecting
                ? "Disconnecting"
                : currentDevice.state === ConnectionState.Disconnected
                    ? "Disconnected" // I'm pretty sure this is impossible but I'll add it anyways
        :currentDevice.state === ConnectionState.Unknown
            ? "Unknown"
            : currentDevice.state === ConnectionState.Connected
                ? currentDevice.type === DeviceType.Wifi
                    ? currentWifiNetwork.name + " (" + currentWifiNetwork.signalStrength + ")"
                    : "Ethernet"
                : "impossible"
            }
    readonly property string deviceType
    : currentDevice === null
        ? "Unknown"
        : DeviceType.toString(currentDevice.type)
}
