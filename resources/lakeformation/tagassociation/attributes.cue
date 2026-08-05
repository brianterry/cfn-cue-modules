package tagassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique string identifying the resource. Used as primary identifier, which ideally should be a string
	ResourceIdentifier: string
	// Unique string identifying the resource's tags. Used as primary identifier, which ideally should be a string
	TagsIdentifier: string
}
