package routingcontrol

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the routing control.
	RoutingControlArn: string & =~"^[A-Za-z0-9:\\/_-]*$"
	// The deployment status of the routing control. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.
	Status: "PENDING" | "DEPLOYED" | "PENDING_DELETION"
}
