package transitgatewaypeeringattachment

#Properties: {
	// The ID of the peer account
	PeerAccountId: string
	// Peer Region
	PeerRegion: string
	// The ID of the peer transit gateway.
	PeerTransitGatewayId: string
	// The tags for the transit gateway peering attachment.
	Tags?: [...#Tag]
	// The ID of the transit gateway.
	TransitGatewayId: string
}

#PeeringAttachmentStatus: {
	// The status code.
	Code?: string
	// The status message, if applicable.
	Message?: string
}

#Tag: {
	// The key of the tag. Constraints: Tag keys are case-sensitive and accept a maximum of 127 Unicode characters. May not begin with aws:.
	Key?: string
	// The value of the tag. Constraints: Tag values are case-sensitive and accept a maximum of 255 Unicode characters.
	Value?: string
}
