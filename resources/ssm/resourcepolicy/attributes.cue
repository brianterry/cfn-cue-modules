package resourcepolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// An unique identifier within the policies of a resource. 
	PolicyId: string
	// A snapshot identifier for the policy over time.
	PolicyHash: string
}
