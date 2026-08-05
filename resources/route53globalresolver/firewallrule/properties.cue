package firewallrule

import "strings"

#Properties: {
	Action: #FirewallRuleAction
	BlockOverrideDnsType?: #BlockOverrideDnsQueryType
	BlockOverrideDomain?: #Domain
	BlockOverrideTtl?: int & >=0 & <=604800
	BlockResponse?: #FirewallBlockResponse
	ClientToken?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ConfidenceThreshold?: #ConfidenceThreshold
	Description?: #ResourceDescription
	DnsAdvancedProtection?: #DnsAdvancedProtection
	DnsViewId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	FirewallDomainListId?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	Name: #ResourceName
	Priority?: int & >=1 & <=10000
	QType?: string & strings.MinRunes(0) & strings.MaxRunes(16)
}

#BlockOverrideDnsQueryType: "CNAME"

#CRResourceStatus: "CREATING" | "OPERATIONAL" | "UPDATING" | "DELETING"

#ConfidenceThreshold: "LOW" | "MEDIUM" | "HIGH"

#DnsAdvancedProtection: "DGA" | "DNS_TUNNELING" | "DICTIONARY_DGA"

#Domain: string & =~"\\*?[-a-zA-Z0-9.]+" & strings.MinRunes(1) & strings.MaxRunes(256)

#FirewallBlockResponse: "NODATA" | "NXDOMAIN" | "OVERRIDE"

#FirewallRuleAction: "ALLOW" | "ALERT" | "BLOCK"

#ResourceDescription: string & strings.MinRunes(1) & strings.MaxRunes(256)

#ResourceName: string & =~"(?!^[0-9]+$)([a-zA-Z0-9-_' ']+)" & strings.MinRunes(1) & strings.MaxRunes(64)
