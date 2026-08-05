package firewall

import "strings"

#Properties: {
	AvailabilityZoneChangeProtection?: bool
	AvailabilityZoneMappings?: [...#AvailabilityZoneMapping]
	DeleteProtection?: bool
	Description?: string & =~"^.*$" & strings.MaxRunes(512)
	// The types of analysis to enable for the firewall. Can be TLS_SNI, HTTP_HOST, or both.
	EnabledAnalysisTypes?: [...#EnabledAnalysisType]
	FirewallName: string & =~"^[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	FirewallPolicyArn: #ResourceArn
	FirewallPolicyChangeProtection?: bool
	SubnetChangeProtection?: bool
	SubnetMappings?: [...#SubnetMapping]
	Tags?: [...#Tag]
	TransitGatewayId?: string & =~"^tgw-[0-9a-z]+$" & strings.MaxRunes(128)
	VpcId?: string & =~"^vpc-[0-9a-f]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#AvailabilityZoneMapping: {
	// A AvailabilityZone
	AvailabilityZone: string
}

#EnabledAnalysisType: "TLS_SNI" | "HTTP_HOST"

#EndpointId: string

#ResourceArn: string & =~"^arn:aws.*$" & strings.MinRunes(1) & strings.MaxRunes(256)

#SubnetMapping: {
	// A IPAddressType
	IPAddressType?: string
	// A SubnetId.
	SubnetId: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(255)
}
