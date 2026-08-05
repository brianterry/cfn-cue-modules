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

#ArnResource: string & =~"^arn.*" & strings.MaxRunes(1224)

#DnsResource: {
	DomainName: string & strings.MinRunes(3) & strings.MaxRunes(255)
	IpAddressType: "IPV4" | "IPV6" | "DUALSTACK"
}

#Id: string & =~"^rcfg-[0-9a-z]{17}$" & strings.MinRunes(22) & strings.MaxRunes(22)

#IpResource: string & strings.MinRunes(4) & strings.MaxRunes(39)

#PortRange: string & =~"^((\\d{1,5}\\-\\d{1,5})|(\\d+))$" & strings.MinRunes(1) & strings.MaxRunes(11)

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
