package variable

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the variable.
	Arn: string
	// The time when the variable was created.
	CreatedTime: string
	// The time when the variable was last updated.
	LastUpdatedTime: string
}
