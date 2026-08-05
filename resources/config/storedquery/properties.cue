package storedquery

import "strings"

#Properties: {
	QueryDescription?: string & =~"[\\s\\S]*" & strings.MinRunes(0) & strings.MaxRunes(256)
	QueryExpression: string & =~"[\\s\\S]*" & strings.MinRunes(1) & strings.MaxRunes(4096)
	QueryName: string & =~"^[a-zA-Z0-9-_]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The tags for the stored query.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
