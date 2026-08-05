package user

import "strings"

#Properties: {
	// Access permissions string used for this user account.
	AccessString?: string
	AuthenticationMode?: {
		Passwords?: [...string]
		Type: "password" | "no-password-required" | "iam"
	}
	// The target cache engine for the user.
	Engine: "redis" | "valkey"
	// Indicates a password is not required for this user account.
	NoPasswordRequired?: bool
	// Passwords used for this user account. You can create up to two passwords for each user.
	Passwords?: [...string]
	// An array of key-value pairs to apply to this user.
	Tags?: [...#Tag]
	// The ID of the user.
	UserId: string & =~"[a-z][a-z0-9\\\\-]*"
	// The username of the user.
	UserName: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with 'aws:'. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z0-9 _\\.\\/=+:\\-@]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & =~"^[a-zA-Z0-9 _\\.\\/=+:\\-@]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
