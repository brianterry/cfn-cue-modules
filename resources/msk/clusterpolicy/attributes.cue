package clusterpolicy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The current version of the policy attached to the specified cluster
	CurrentVersion: string & =~"^(K)([a-zA-Z0-9]+)\\Z"
}
