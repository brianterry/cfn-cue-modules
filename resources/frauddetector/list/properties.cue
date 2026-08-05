package list

import "strings"

#Properties: {
	// The description of the list.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The elements in this list.
	Elements?: [...#Element]
	// The name of the list.
	Name: string & =~"^[0-9a-z_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Tags associated with this list.
	Tags?: [...#Tag]
	// The variable type of the list.
	VariableType?: string & =~"^[A-Z_]{1,64}$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
