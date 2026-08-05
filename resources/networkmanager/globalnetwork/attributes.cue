package globalnetwork

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the global network.
	Id: string
	// The Amazon Resource Name (ARN) of the global network.
	Arn: string
}
