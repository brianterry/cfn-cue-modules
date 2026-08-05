package geofencecollection

import "strings"

#Properties: {
	CollectionName: string & =~"^[-._\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	PricingPlan?: #PricingPlan
	// This shape is deprecated since 2022-02-01: Deprecated. No longer allowed.
	PricingPlanDataSource?: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^[A-Za-z0-9 _=@:.+-/]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
