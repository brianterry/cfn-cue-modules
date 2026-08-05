package localgatewayroutetable

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the local gateway route table.
	LocalGatewayRouteTableId: string
	// The ARN of the local gateway route table.
	LocalGatewayRouteTableArn: string
	// The ARN of the outpost.
	OutpostArn: string
	// The owner of the local gateway route table.
	OwnerId: string
	// The state of the local gateway route table.
	State: string
}
