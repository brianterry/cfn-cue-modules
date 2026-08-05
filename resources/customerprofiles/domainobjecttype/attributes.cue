package domainobjecttype

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The timestamp of when the domain object type was created.
	CreatedAt: string
	// The timestamp of when the domain object type was most recently edited.
	LastUpdatedAt: string
}
