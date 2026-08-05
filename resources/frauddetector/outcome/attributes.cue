package outcome

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The outcome ARN.
	Arn: string
	// The timestamp when the outcome was created.
	CreatedTime: string
	// The timestamp when the outcome was last updated.
	LastUpdatedTime: string
}
