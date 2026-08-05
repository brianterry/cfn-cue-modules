package map

import "strings"

#Properties: {
	Configuration: #MapConfiguration
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	MapName: string & =~"^[-._\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	PricingPlan?: #PricingPlan
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#MapConfiguration: {
	CustomLayers?: [...string & =~"^[-._\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(100)]
	PoliticalView?: string & =~"^[A-Z]{3}$" & strings.MinRunes(3) & strings.MaxRunes(3)
	Style: string & =~"^[-._\\w]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^[A-Za-z0-9 _=@:.+-/]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
