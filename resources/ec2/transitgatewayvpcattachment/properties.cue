package transitgatewayvpcattachment

#Properties: {
	AddSubnetIds?: [...string]
	// The options for the transit gateway vpc attachment.
	Options?: {
		ApplianceModeSupport?: string
		DnsSupport?: string
		Ipv6Support?: string
		SecurityGroupReferencingSupport?: string
	}
	RemoveSubnetIds?: [...string]
	SubnetIds: [...string]
	Tags?: [...#Tag]
	TransitGatewayId: string
	VpcId: string
}

#Tag: {
	Key: string
	Value: string
}
