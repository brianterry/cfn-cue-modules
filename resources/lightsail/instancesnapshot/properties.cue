package instancesnapshot

import "strings"

#Properties: {
	// The instance from which the snapshot was created.
	InstanceName: string
	// The name of the snapshot.
	InstanceSnapshotName: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Location: {
	// The Availability Zone. Follows the format us-east-2a (case-sensitive).
	AvailabilityZone?: string
	// The AWS Region name.
	RegionName?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
