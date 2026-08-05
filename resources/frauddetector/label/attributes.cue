package label

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The label ARN.
	Arn: string
	// The timestamp when the label was created.
	CreatedTime: string
	// The timestamp when the label was last updated.
	LastUpdatedTime: string
}
