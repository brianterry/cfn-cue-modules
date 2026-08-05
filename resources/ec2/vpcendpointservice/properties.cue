package vpcendpointservice

#Properties: {
	AcceptanceRequired?: bool
	ContributorInsightsEnabled?: bool
	GatewayLoadBalancerArns?: [...string]
	NetworkLoadBalancerArns?: [...string]
	PayerResponsibility?: string
	// Specify which Ip Address types are supported for VPC endpoint service.
	SupportedIpAddressTypes?: [...#IpAddressType]
	// The Regions from which service consumers can access the service.
	SupportedRegions?: [...string]
	// The tags to add to the VPC endpoint service.
	Tags?: [...#Tag]
}

#IpAddressType: "ipv4" | "ipv6"

#Tag: {
	Key: string
	Value: string
}
