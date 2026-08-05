package discoverer

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the discoverer.
	DiscovererArn: string
	// The Id of the discoverer.
	DiscovererId: string
	// Defines the current state of the discoverer.
	State: string
}
