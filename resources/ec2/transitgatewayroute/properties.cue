package transitgatewayroute

#Properties: {
	// Indicates whether to drop traffic that matches this route.
	Blackhole?: bool
	// The CIDR range used for destination matches. Routing decisions are based on the most specific match.
	DestinationCidrBlock: string
	// The ID of transit gateway attachment.
	TransitGatewayAttachmentId?: string
	// The ID of transit gateway route table.
	TransitGatewayRouteTableId: string
}
