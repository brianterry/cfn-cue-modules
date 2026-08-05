package acl

import "strings"

#Properties: {
	// The name of the acl.
	ACLName: string & =~"[a-z][a-z0-9\\\\-]*"
	// An array of key-value pairs to apply to this cluster.
	Tags?: [...#Tag]
	// List of users associated to this acl.
	UserNames?: [...string]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with 'aws:'. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z0-9 _\\.\\/=+:\\-@]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & =~"^[a-zA-Z0-9 _\\.\\/=+:\\-@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
