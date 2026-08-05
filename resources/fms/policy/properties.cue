package policy

import "strings"

#Properties: {
	DeleteAllPolicyResources?: bool
	ExcludeMap?: #IEMap
	ExcludeResourceTags: bool
	IncludeMap?: #IEMap
	PolicyDescription?: string & =~"^([a-zA-Z0-9_.:/=+\\-@\\s]+)$" & strings.MaxRunes(256)
	PolicyName: string & =~"^([a-zA-Z0-9_.:/=+\\-@\\s]+)$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	RemediationEnabled: bool
	ResourceSetIds?: [...#Base62Id]
	ResourceTagLogicalOperator?: "AND" | "OR"
	ResourceTags?: [...#ResourceTag]
	ResourceType?: #ResourceType
	ResourceTypeList?: [...#ResourceType]
	ResourcesCleanUp?: bool
	SecurityServicePolicyData: #SecurityServicePolicyData
	Tags?: [...#PolicyTag]
}

#AccountId: string & =~"^([0-9]*)$" & strings.MinRunes(12) & strings.MaxRunes(12)

#Base62Id: string & =~"^[a-z0-9A-Z]{22}$" & strings.MinRunes(22) & strings.MaxRunes(22)

#FirewallDeploymentModel: "DISTRIBUTED" | "CENTRALIZED"

#IEMap: {
	ACCOUNT?: [...#AccountId]
	ORGUNIT?: [...#OrganizationalUnitId]
}

#ManagedServiceData: string & strings.MinRunes(1) & strings.MaxRunes(30000)

#NetworkAclCommonPolicy: {
	NetworkAclEntrySet: #NetworkAclEntrySet
}

#NetworkAclEntry: {
	// CIDR block.
	CidrBlock?: string & =~"^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\\/([0-9]|[1-2][0-9]|3[0-2]))$"
	// Whether the entry is an egress entry.
	Egress: bool
	// ICMP type and code.
	IcmpTypeCode?: {
		Code: int & >=0 & <=255
		Type: int & >=0 & <=255
	}
	// IPv6 CIDR block.
	Ipv6CidrBlock?: string & =~"^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))(/(1[0-2]|[0-9]))?$"
	// Port range.
	PortRange?: {
		From: int & >=0 & <=65535
		To: int & >=0 & <=65535
	}
	// Protocol.
	Protocol: string & =~"^(tcp|udp|icmp|-1|([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5]))$"
	// Rule Action.
	RuleAction: "allow" | "deny"
}

#NetworkAclEntryList: [...#NetworkAclEntry]

#NetworkAclEntrySet: {
	FirstEntries?: #NetworkAclEntryList
	ForceRemediateForFirstEntries: bool
	ForceRemediateForLastEntries: bool
	LastEntries?: #NetworkAclEntryList
}

#NetworkFirewallPolicy: {
	FirewallDeploymentModel: #FirewallDeploymentModel
}

#OrganizationalUnitId: string & =~"^(ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$" & strings.MinRunes(16) & strings.MaxRunes(68)

#PolicyOption: {
	NetworkAclCommonPolicy?: #NetworkAclCommonPolicy
	NetworkFirewallPolicy?: #NetworkFirewallPolicy
	ThirdPartyFirewallPolicy?: #ThirdPartyFirewallPolicy
}

#PolicyTag: {
	Key: string & =~"^([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^([^\\s]*)$" & strings.MaxRunes(256)
}

#PolicyType: "WAF" | "WAFV2" | "SHIELD_ADVANCED" | "SECURITY_GROUPS_COMMON" | "SECURITY_GROUPS_CONTENT_AUDIT" | "SECURITY_GROUPS_USAGE_AUDIT" | "NETWORK_FIREWALL" | "THIRD_PARTY_FIREWALL" | "DNS_FIREWALL" | "IMPORT_NETWORK_FIREWALL" | "NETWORK_ACL_COMMON"

#ResourceArn: string & =~"^([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)

#ResourceTag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MaxRunes(256)
}

#ResourceType: string & =~"^([^\\s]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)

#SecurityServicePolicyData: {
	ManagedServiceData?: #ManagedServiceData
	PolicyOption?: #PolicyOption
	Type: #PolicyType
}

#ThirdPartyFirewallPolicy: {
	FirewallDeploymentModel: #FirewallDeploymentModel
}
