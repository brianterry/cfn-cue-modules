package entitytype

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The entity type ARN.
	Arn: string
	// The timestamp when the entity type was created.
	CreatedTime: string
	// The timestamp when the entity type was last updated.
	LastUpdatedTime: string
}
