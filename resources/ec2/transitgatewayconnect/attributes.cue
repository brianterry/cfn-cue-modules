package transitgatewayconnect

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the Connect attachment.
	TransitGatewayAttachmentId: string
	// The state of the attachment.
	State: string
	// The creation time.
	CreationTime: string
	// The ID of the transit gateway.
	TransitGatewayId: string
}
