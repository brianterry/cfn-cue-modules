package user

import "strings"

#Properties: {
	// Access permissions string used for this user account.
	AccessString?: string
	AuthenticationMode?: {
		Passwords?: [...string]
		Type?: "password" | "iam"
	}
	// An array of key-value pairs to apply to this user.
	Tags?: [...#Tag]
	// The name of the user.
	UserName: string & =~"[a-z][a-z0-9\\\\-]*"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with 'aws:'. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z0-9 _\\.\\/=+:\\-@]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & =~"^[a-zA-Z0-9 _\\.\\/=+:\\-@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
