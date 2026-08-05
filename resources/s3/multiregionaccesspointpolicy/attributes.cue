package multiregionaccesspointpolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Policy Status associated with this Multi Region Access Point
	PolicyStatus: {
	IsPublic: "true" | "false"
}
}
