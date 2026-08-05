package gateway

#Properties: {
	// The range of IP addresses that contribute content or initiate output requests for flows communicating with this gateway. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
	EgressCidrBlocks: [...string]
	// The name of the gateway. This name can not be modified after the gateway is created.
	Name: string
	// The list of networks in the gateway.
	Networks: [...#GatewayNetwork]
}

#GatewayNetwork: {
	// A unique IP address range to use for this network. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.
	CidrBlock: string
	// The name of the network. This name is used to reference the network and must be unique among networks in this gateway.
	Name: string
}
