package matchmakingruleset

import "strings"

#Properties: {
	// A unique identifier for the matchmaking rule set.
	Name: string & =~"[a-zA-Z0-9-\\.]*" & strings.MaxRunes(128)
	// A collection of matchmaking rules, formatted as a JSON string.
	RuleSetBody: string & strings.MinRunes(1) & strings.MaxRunes(65535)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
