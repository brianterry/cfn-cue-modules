package transitgatewayconnect

#Properties: {
	// The Connect attachment options.
	Options: #TransitGatewayConnectOptions
	// The tags for the attachment.
	Tags?: [...#Tag]
	// The ID of the attachment from which the Connect attachment was created.
	TransportTransitGatewayAttachmentId: string
}

#Tag: {
	// The key of the tag. Constraints: Tag keys are case-sensitive and accept a maximum of 127 Unicode characters. May not begin with aws:.
	Key?: string
	// The value of the tag. Constraints: Tag values are case-sensitive and accept a maximum of 255 Unicode characters.
	Value?: string
}

#TransitGatewayConnectOptions: {
	// The tunnel protocol.
	Protocol?: string
}
