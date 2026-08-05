package firewallrulegroup

import "strings"

#Properties: {
	// FirewallRuleGroupName
	Name?: string & =~"(?!^[0-9]+$)([a-zA-Z0-9\\-_' ']+)" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Tags
	Tags?: [...#Tag]
}

#FirewallAdvancedContentCategoryConfig: {
	// The content category value.
	Category: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#FirewallAdvancedThreatCategoryConfig: {
	// The threat category value.
	Category: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#FirewallRule: {
	// Rule Action
	Action: "ALLOW" | "BLOCK" | "ALERT"
	// BlockOverrideDnsType
	BlockOverrideDnsType?: "CNAME"
	// BlockOverrideDomain
	BlockOverrideDomain?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// BlockOverrideTtl
	BlockOverrideTtl?: int & >=0 & <=604800
	// BlockResponse
	BlockResponse?: "NODATA" | "NXDOMAIN" | "OVERRIDE"
	// ConfidenceThreshold
	ConfidenceThreshold?: "LOW" | "MEDIUM" | "HIGH"
	// DnsThreatProtection
	DnsThreatProtection?: "DGA" | "DNS_TUNNELING" | "DICTIONARY_DGA"
	// ResourceId
	FirewallDomainListId?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// FirewallDomainRedirectionAction
	FirewallDomainRedirectionAction?: "INSPECT_REDIRECTION_DOMAIN" | "TRUST_REDIRECTION_DOMAIN"
	// Advanced firewall rule type. Mutually exclusive with FirewallDomainListId and DnsThreatProtection/ConfidenceThreshold.
	FirewallRuleType?: #FirewallRuleType
	// ResourceId
	FirewallThreatProtectionId?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Rule Priority
	Priority: int
	// Qtype
	Qtype?: string & strings.MinRunes(1) & strings.MaxRunes(16)
	// The status of the firewall rule.
	Status?: "COMPLETE" | "CREATING" | "CREATION_FAILED"
}

#FirewallRuleType: {
	FirewallAdvancedContentCategory?: #FirewallAdvancedContentCategoryConfig
	FirewallAdvancedThreatCategory?: #FirewallAdvancedThreatCategoryConfig
	PartnerThreatProtection?: #PartnerThreatProtectionConfig
}

#PartnerThreatProtectionConfig: {
	// The partner identifier value.
	Partner: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(255)
}
