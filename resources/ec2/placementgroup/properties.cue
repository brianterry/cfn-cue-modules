package placementgroup

import "strings"

#Properties: {
	// The ID of a parent placement group. Valid for strategies that support parent group linking.
	ParentGroupId?: string
	// The number of partitions. Valid only when **Strategy** is set to `partition`
	PartitionCount?: int
	// The Spread Level of Placement Group is an enum where it accepts either host or rack when strategy is spread
	SpreadLevel?: string
	// The placement strategy.
	Strategy?: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
