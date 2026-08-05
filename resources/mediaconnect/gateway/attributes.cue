package gateway

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the gateway.
	GatewayArn: string
	// The current status of the gateway.
	GatewayState: "CREATING" | "ACTIVE" | "UPDATING" | "ERROR" | "DELETING" | "DELETED"
}
