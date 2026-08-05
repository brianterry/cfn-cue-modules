package profileassociation

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the profile association.
	Arn?: string
	// The name of an association between a  Profile and a VPC.
	Name: string
	// The ID of the  profile that you associated with the resource that is specified by ResourceId.
	ProfileId: string
	// The resource that you associated the  profile with.
	ResourceId: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
