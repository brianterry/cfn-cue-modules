package farm

import "strings"

#Properties: {
	CostScaleFactor?: number & >=0 & <=100
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(100)
	DisplayName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	KmsKeyArn?: string & =~"^arn:aws[-a-z]*:kms:.*:key/.*"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
