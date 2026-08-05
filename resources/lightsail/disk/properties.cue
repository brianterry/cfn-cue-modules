package disk

import "strings"

#Properties: {
	// An array of objects representing the add-ons to enable for the new instance.
	AddOns?: [...#AddOn]
	// The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
	AvailabilityZone?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The names to use for your new Lightsail disk.
	DiskName: string & =~"^[a-zA-Z0-9][\\w\\-.]*[a-zA-Z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(254)
	// Size of the Lightsail disk
	SizeInGb: int
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AddOn: {
	// The add-on type
	AddOnType: string & strings.MinRunes(1) & strings.MaxRunes(128)
	AutoSnapshotAddOnRequest?: #AutoSnapshotAddOn
	// Status of the Addon
	Status?: "Enabling" | "Disabling" | "Enabled" | "Terminating" | "Terminated" | "Disabled" | "Failed"
}

#AutoSnapshotAddOn: {
	// The daily time when an automatic snapshot will be created.
	SnapshotTimeOfDay?: string & =~"^[0-9]{2}:00$"
}

#Location: {
	// The Availability Zone in which to create your disk. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
	AvailabilityZone?: string
	// The Region Name in which to create your disk.
	RegionName?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
