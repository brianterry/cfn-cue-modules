package protectconfiguration

import "strings"

#Properties: {
	// An array of CountryRule containing the rules for the NumberCapability.
	CountryRuleSet?: #CountryRuleSet
	// When set to true deletion protection is enabled and protect configuration cannot be deleted. By default this is set to false.
	DeletionProtectionEnabled?: bool
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CountryRule: {
	// The two-letter ISO country code
	CountryCode: string & =~"^[A-Z]{2}$"
	// The types of protection that can be used.
	ProtectStatus: "ALLOW" | "BLOCK" | "MONITOR" | "FILTER"
}

#CountryRuleSet: {
	MMS?: [...#CountryRule]
	SMS?: [...#CountryRule]
	VOICE?: [...#CountryRule]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
