package feature

import "strings"

#Properties: {
	DefaultVariation?: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(160)
	EntityOverrides?: [...#EntityOverride]
	EvaluationStrategy?: "ALL_RULES" | "DEFAULT_VARIATION"
	Name: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	Project: string & =~"([-a-zA-Z0-9._]*)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*)" & strings.MinRunes(0) & strings.MaxRunes(2048)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	Variations: [...#VariationObject]
}

#EntityOverride: {
	EntityId?: string
	Variation?: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VariationObject: {
	BooleanValue?: bool
	DoubleValue?: number
	LongValue?: number
	StringValue?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	VariationName?: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
}
