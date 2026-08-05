package resourcegateway

import "strings"

#Properties: {
	IpAddressType?: "IPV4" | "IPV6" | "DUALSTACK"
	// The number of IPv4 addresses to allocate per ENI for the resource gateway
	Ipv4AddressesPerEni?: int
	Name: string & =~"^(?!rgw-)(?![-])(?!.*[-]$)(?!.*[-]{2})[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(40)
	ResourceConfigDnsResolution?: "IN_VPC" | "PUBLIC"
	// The ID of one or more security groups to associate with the endpoint network interface.
	SecurityGroupIds?: [...string | string | string]
	// The ID of one or more subnets in which to create an endpoint network interface.
	SubnetIds: [...string]
	Tags?: [...#Tag]
	VpcIdentifier: string & strings.MinRunes(5) & strings.MaxRunes(50)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
