package route

#Properties: {
	// The ID of the carrier gateway.
	// You can only use this option when the VPC contains a subnet which is associated with a Wavelength Zone.
	CarrierGatewayId?: string
	// The Amazon Resource Name (ARN) of the core network.
	CoreNetworkArn?: string
	// The IPv4 CIDR address block used for the destination match. Routing decisions are based on the most specific match. We modify the specified CIDR block to its canonical form; for example, if you specify ``100.68.0.18/18``, we modify it to ``100.68.0.0/18``.
	DestinationCidrBlock?: string
	// The IPv6 CIDR block used for the destination match. Routing decisions are based on the most specific match.
	DestinationIpv6CidrBlock?: string
	// The ID of a prefix list used for the destination match.
	DestinationPrefixListId?: string
	// [IPv6 traffic only] The ID of an egress-only internet gateway.
	EgressOnlyInternetGatewayId?: string
	// The ID of an internet gateway or virtual private gateway attached to your VPC.
	GatewayId?: string
	// The ID of a NAT instance in your VPC. The operation fails if you specify an instance ID unless exactly one network interface is attached.
	InstanceId?: string
	// The ID of the local gateway.
	LocalGatewayId?: string
	// [IPv4 traffic only] The ID of a NAT gateway.
	NatGatewayId?: string
	// The ID of a network interface.
	NetworkInterfaceId?: string
	// The Amazon Resource Name (ARN) of the ODB network.
	OdbNetworkArn?: string
	// The ID of the route table for the route.
	RouteTableId: string
	// The ID of a transit gateway.
	TransitGatewayId?: string
	// The ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints only.
	VpcEndpointId?: string
	// The ID of a VPC peering connection.
	VpcPeeringConnectionId?: string
}
