package transitgatewaypeering

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN (Amazon Resource Name) of the core network that you want to peer a transit gateway to.
	CoreNetworkArn: string
	// The Id of the transit gateway peering
	PeeringId: string
	// The state of the transit gateway peering
	State: string
	// Peering type (TransitGatewayPeering)
	PeeringType: string
	// Peering owner account Id
	OwnerAccountId: string
	// The location of the transit gateway peering
	EdgeLocation: string
	// The ARN (Amazon Resource Name) of the resource that you will peer to a core network
	ResourceArn: string
	// The creation time of the transit gateway peering
	CreatedAt: string
	// The ID of the TransitGatewayPeeringAttachment
	TransitGatewayPeeringAttachmentId: string
	// Errors from the last modification of the transit gateway peering.
	LastModificationErrors: [...string]
}
