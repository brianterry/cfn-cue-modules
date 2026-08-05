package vpngatewayroutepropagation

#Properties: {
	// The ID of the route table. The routing table must be associated with the same VPC that the virtual private gateway is attached to
	RouteTableIds: [...string]
	// The ID of the virtual private gateway that is attached to a VPC. The virtual private gateway must be attached to the same VPC that the routing tables are associated with
	VpnGatewayId: string
}
