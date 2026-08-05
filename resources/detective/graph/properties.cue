package graph

import "strings"

#Properties: {
	// Indicates whether to automatically enable new organization accounts as member accounts in the organization behavior graph.
	AutoEnableMembers?: bool
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. Valid characters are Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @ 
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. Valid characters are Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @ 
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
