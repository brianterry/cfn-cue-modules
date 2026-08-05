package localgatewayroutetablevpcassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the local gateway.
	LocalGatewayId: string
	// The ID of the association.
	LocalGatewayRouteTableVpcAssociationId: string
	// The state of the association.
	State: string
}
