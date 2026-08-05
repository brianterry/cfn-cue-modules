package vpngateway

#Properties: {
	// The private Autonomous System Number (ASN) for the Amazon side of a BGP session.
	AmazonSideAsn?: int
	// Any tags assigned to the virtual private gateway.
	Tags?: [...#Tag]
	// The type of VPN connection the virtual private gateway supports.
	Type: string
}

#Tag: {
	// The tag key.
	Key: string
	// The tag value.
	Value: string
}
