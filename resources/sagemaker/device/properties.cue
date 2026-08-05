package device

import "strings"

#Properties: {
	// The Edge Device you want to register against a device fleet
	Device?: #Device
	// The name of the edge device fleet
	DeviceFleetName: string & =~"^[a-zA-Z0-9](-*_*[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// Associate tags with the resource
	Tags?: [...#Tag]
}

#Device: {
	// Description of the device
	Description?: string & =~"[\\S\\s]+" & strings.MinRunes(1) & strings.MaxRunes(40)
	// The name of the device
	DeviceName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// AWS Internet of Things (IoT) object name.
	IotThingName?: string & =~"[a-zA-Z0-9:_-]+" & strings.MaxRunes(128)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^((?!aws:)[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The key value of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
