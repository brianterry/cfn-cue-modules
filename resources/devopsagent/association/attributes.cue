package association

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the association
	AssociationId: #AssociationId
	// The timestamp when the association was created
	CreatedAt: string
	// The timestamp when the association was last updated
	UpdatedAt: string
}
