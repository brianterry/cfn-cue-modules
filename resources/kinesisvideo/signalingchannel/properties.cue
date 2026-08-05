package signalingchannel

import "strings"

#Properties: {
	// The period of time a signaling channel retains undelivered messages before they are discarded.
	MessageTtlSeconds?: int & >=5 & <=120
	// The name of the Kinesis Video Signaling Channel.
	Name?: string & =~"[a-zA-Z0-9_.-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The type of the Kinesis Video Signaling Channel to create. Currently, SINGLE_MASTER is the only supported channel type.
	Type?: "SINGLE_MASTER"
}

#Tag: {
	// The key name of the tag. Specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. The following characters can be used: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. Specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:.  The following characters can be used: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
