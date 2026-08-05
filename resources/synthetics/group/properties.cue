package group

import "strings"

#Properties: {
	// Name of the group.
	Name: string & =~"^[0-9a-z_\\-]{1,64}$"
	ResourceArns?: [...#ResourceArn]
	Tags?: [...#Tag]
}

#ResourceArn: string & =~"arn:(aws[a-zA-Z-]*)?:synthetics:[a-z]{2}((-gov)|(-iso(b|e|f?)))?-[a-z]+-\\d{1}:\\d{12}:canary:[0-9a-z_\\-]"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)([a-zA-Z\\d\\s_.:/=+\\-@]+)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^([a-zA-Z\\d\\s_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
