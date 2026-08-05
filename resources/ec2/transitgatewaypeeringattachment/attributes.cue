package transitgatewaypeeringattachment

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the transit gateway peering attachment.
	TransitGatewayAttachmentId: string
	// The status of the transit gateway peering attachment.
	Status: #PeeringAttachmentStatus
	// The state of the transit gateway peering attachment. Note that the initiating state has been deprecated.
	State: string
	// The time the transit gateway peering attachment was created.
	CreationTime: string
}
