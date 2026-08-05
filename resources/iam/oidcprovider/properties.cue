package oidcprovider

import "strings"

#Properties: {
	ClientIdList?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
	Tags?: [...#Tag]
	ThumbprintList?: [...string & =~"[0-9A-Fa-f]{40}" & strings.MinRunes(40) & strings.MaxRunes(40)]
	Url?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
