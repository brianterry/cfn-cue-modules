package network

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the Network.
	Arn: string
	// The unique ID of the Network.
	Id: string
	// The current state of the Network.
	State: #NetworkState
	AssociatedClusterIds: [...string]
}
