package carriergateway

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the carrier gateway.
	CarrierGatewayId: string
	// The ID of the owner.
	OwnerId: string
	// The state of the carrier gateway.
	State: string
}
