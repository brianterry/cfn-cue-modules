package transitgatewayconnectpeer

#Properties: {
	// The tags for the Connect Peer.
	Tags?: [...#Tag]
	// The ID of the Connect attachment.
	TransitGatewayAttachmentId: string
}

#Tag: {
	// The key of the tag. Constraints: Tag keys are case-sensitive and accept a maximum of 127 Unicode characters. May not begin with aws: .
	Key?: string
	// The value of the tag. Constraints: Tag values are case-sensitive and accept a maximum of 256 Unicode characters.
	Value?: string
}

#TransitGatewayAttachmentBgpConfiguration: {
	// The BGP status.
	BgpStatus?: string
	// The interior BGP peer IP address for the appliance.
	PeerAddress?: string
	// The peer Autonomous System Number (ASN).
	PeerAsn?: number
	// The interior BGP peer IP address for the transit gateway.
	TransitGatewayAddress?: string
	// The transit gateway Autonomous System Number (ASN).
	TransitGatewayAsn?: number
}

#TransitGatewayConnectPeerConfiguration: {
	// The BGP configuration details.
	BgpConfigurations?: [...#TransitGatewayAttachmentBgpConfiguration]
	// The range of interior BGP peer IP addresses.
	InsideCidrBlocks: [...string]
	// The peer IP address (GRE outer IP address) on the appliance side of the Connect peer.
	PeerAddress: string
	// The tunnel protocol.
	Protocol?: string
	// The Connect peer IP address on the transit gateway side of the tunnel.
	TransitGatewayAddress?: string
}
