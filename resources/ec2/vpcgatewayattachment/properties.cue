package vpcgatewayattachment

#Properties: {
	// The ID of the internet gateway. You must specify either InternetGatewayId or VpnGatewayId, but not both.
	InternetGatewayId?: string
	// The ID of the VPC.
	VpcId: string
	// The ID of the virtual private gateway. You must specify either InternetGatewayId or VpnGatewayId, but not both.
	VpnGatewayId?: string
}
