package list

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The list ARN.
	Arn: string
	// The time when the list was created.
	CreatedTime: string
	// The time when the list was last updated.
	LastUpdatedTime: string
}
