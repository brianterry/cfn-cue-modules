package dnsview

import "strings"

#Properties: {
	ClientToken?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Description?: #ResourceDescription
	DnssecValidation?: #DnsSecValidationType
	EdnsClientSubnet?: #EdnsClientSubnetType
	FirewallRulesFailOpen?: #FirewallRulesFailOpenType
	GlobalResolverId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	Name: #ResourceName
	Tags?: [...#Tag]
}

#DnsSecValidationType: "ENABLED" | "DISABLED"

#EdnsClientSubnetType: "ENABLED" | "DISABLED"

#FirewallRulesFailOpenType: "ENABLED" | "DISABLED"

#ProfileResourceStatus: "CREATING" | "OPERATIONAL" | "UPDATING" | "ENABLING" | "DISABLING" | "DISABLED" | "DELETING"

#ResourceDescription: string & strings.MinRunes(1) & strings.MaxRunes(256)

#ResourceName: string & =~"(?!^[0-9]+$)([a-zA-Z0-9-_' ']+)" & strings.MinRunes(1) & strings.MaxRunes(64)

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
