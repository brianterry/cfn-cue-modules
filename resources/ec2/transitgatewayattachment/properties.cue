package transitgatewayattachment

#Properties: {
	// The options for the transit gateway vpc attachment.
	Options?: {
		ApplianceModeSupport?: string
		DnsSupport?: string
		Ipv6Support?: string
		SecurityGroupReferencingSupport?: string
	}
	SubnetIds: [...string]
	Tags?: [...#Tag]
	TransitGatewayId: string
	VpcId: string
}

#Tag: {
	Key: string
	Value: string
}
