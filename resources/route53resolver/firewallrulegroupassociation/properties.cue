package firewallrulegroupassociation

import "strings"

#Properties: {
	// FirewallRuleGroupId
	FirewallRuleGroupId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// MutationProtectionStatus
	MutationProtection?: "ENABLED" | "DISABLED"
	// FirewallRuleGroupAssociationName
	Name?: string & =~"(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)" & strings.MinRunes(0) & strings.MaxRunes(64)
	// Priority
	Priority: int
	// Tags
	Tags?: [...#Tag]
	// VpcId
	VpcId: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(255)
}
