package networkanalyzerconfiguration

import "strings"

#Properties: {
	// The description of the new resource
	Description?: string & strings.MaxRunes(2048)
	// Name of the network analyzer configuration
	Name: string & =~"^[a-zA-Z0-9-_]+$" & strings.MaxRunes(1024)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// Trace content for your wireless gateway and wireless device resources
	TraceContent?: {
		LogLevel?: #LogLevel
		WirelessDeviceFrameInfo?: #WirelessDeviceFrameInfo
	}
	// List of wireless gateway resources that have been added to the network analyzer configuration
	WirelessDevices?: [...string]
	// List of wireless gateway resources that have been added to the network analyzer configuration
	WirelessGateways?: [...string]
}

#LogLevel: "INFO" | "ERROR" | "DISABLED"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WirelessDeviceFrameInfo: "ENABLED" | "DISABLED"
