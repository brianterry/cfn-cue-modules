package domain

import "strings"

#Properties: {
	// The name of the domain.
	DomainName: string & =~"^([a-z][a-z0-9\\-]{0,48}[a-z0-9])$" & strings.MinRunes(2) & strings.MaxRunes(50)
	// The access control resource policy on the provided domain.
	PermissionsPolicyDocument?: {...}
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
