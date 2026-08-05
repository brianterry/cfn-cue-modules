package wirelessdevice

import "strings"

#Properties: {
	// Wireless device description
	Description?: string & strings.MaxRunes(2048)
	// Wireless device destination name
	DestinationName: string & strings.MaxRunes(128)
	// The date and time when the most recent uplink was received.
	LastUplinkReceivedAt?: string
	// The combination of Package, Station and Model which represents the version of the LoRaWAN Wireless Device.
	LoRaWAN?: #LoRaWANDevice
	// Wireless device name
	Name?: string & strings.MaxRunes(256)
	// FPort values for the GNSS, stream, and ClockSync functions of the positioning information.
	Positioning?: "Enabled" | "Disabled"
	// A list of key-value pairs that contain metadata for the device. Currently not supported, will not create if tags are passed.
	Tags?: [...#Tag]
	// Thing arn. Passed into update to associate Thing with Wireless device.
	ThingArn?: string
	// Wireless device type, currently only Sidewalk and LoRa
	Type: "Sidewalk" | "LoRaWAN"
}

#AbpV10x: {
	DevAddr: string & =~"[a-fA-F0-9]{8}"
	SessionKeys: #SessionKeysAbpV10x
}

#AbpV11: {
	DevAddr: string & =~"[a-fA-F0-9]{8}"
	SessionKeys: #SessionKeysAbpV11
}

#Application: {
	// The name of the position data destination that describes the AWS IoT rule that processes the device's position data for use by AWS IoT Core for LoRaWAN.
	DestinationName?: string & =~"[a-zA-Z0-9-_]+" & strings.MaxRunes(128)
	// The Fport value.
	FPort?: int & >=1 & <=223
	// Application type, which can be specified to obtain real-time position information of your LoRaWAN device.
	Type?: "SemtechGeolocation" | "SemtechGNSS" | "SemtechGNSSNG" | "SemtechWiFi"
}

#FPorts: {
	// A list of optional LoRaWAN application information, which can be used for geolocation.
	Applications?: [...#Application]
}

#LoRaWANDevice: {
	AbpV10x?: #AbpV10x
	AbpV11?: #AbpV11
	DevEui?: string & =~"[a-f0-9]{16}"
	DeviceProfileId?: string & strings.MaxRunes(256)
	FPorts?: #FPorts
	OtaaV10x?: #OtaaV10x
	OtaaV11?: #OtaaV11
	ServiceProfileId?: string & strings.MaxRunes(256)
}

#OtaaV10x: {
	AppEui: string & =~"[a-fA-F0-9]{16}"
	AppKey: string & =~"[a-fA-F0-9]{32}"
}

#OtaaV11: {
	AppKey: string & =~"[a-fA-F0-9]{32}"
	JoinEui: string & =~"[a-fA-F0-9]{16}"
	NwkKey: string & =~"[a-fA-F0-9]{32}"
}

#SessionKeysAbpV10x: {
	AppSKey: string & =~"[a-fA-F0-9]{32}"
	NwkSKey: string & =~"[a-fA-F0-9]{32}"
}

#SessionKeysAbpV11: {
	AppSKey: string & =~"[a-fA-F0-9]{32}"
	FNwkSIntKey: string & =~"[a-fA-F0-9]{32}"
	NwkSEncKey: string & =~"[a-fA-F0-9]{32}"
	SNwkSIntKey: string & =~"[a-fA-F0-9]{32}"
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
