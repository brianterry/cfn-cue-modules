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
