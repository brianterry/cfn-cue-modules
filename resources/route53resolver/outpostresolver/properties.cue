package outpostresolver

import "strings"

#Properties: {
	// The number of OutpostResolvers.
	InstanceCount?: int & >=4 & <=256
	// The OutpostResolver name.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The Outpost ARN.
	OutpostArn: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The OutpostResolver instance type.
	PreferredInstanceType: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
