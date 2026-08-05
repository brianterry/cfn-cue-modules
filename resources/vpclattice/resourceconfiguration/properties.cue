package resourceconfiguration

import "strings"

#Properties: {
	AllowAssociationToSharableServiceNetwork?: bool
	CustomDomainName?: string & strings.MinRunes(3) & strings.MaxRunes(255)
	DomainVerificationId?: string & =~"^dv-[a-fA-F0-9]{17}$" & strings.MinRunes(20) & strings.MaxRunes(20)
	GroupDomain?: string & strings.MinRunes(3) & strings.MaxRunes(255)
	Name: string & =~"^(?!rcfg-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(40)
	PortRanges?: [...#PortRange]
	ProtocolType?: "TCP"
	ResourceConfigurationAuthType?: "NONE" | "AWS_IAM"
	ResourceConfigurationDefinition?: {
		IpResource: #IpResource
	} | {
		ArnResource: #ArnResource
	} | {
		DnsResource: #DnsResource
	}
	ResourceConfigurationGroupId?: #Id
	ResourceConfigurationType: "GROUP" | "CHILD" | "SINGLE" | "ARN"
	ResourceGatewayId?: string
	Tags?: [...#Tag]
}

#DnsResource: {
	DomainName: string & strings.MinRunes(3) & strings.MaxRunes(255)
	IpAddressType: "IPV4" | "IPV6" | "DUALSTACK"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
