package aggregationauthorization

import "strings"

#Properties: {
	// The 12-digit account ID of the account authorized to aggregate data.
	AuthorizedAccountId: string & =~"^\\d{12}$"
	// The region authorized to collect aggregated data.
	AuthorizedAwsRegion: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// The tags for the AggregationAuthorization.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
