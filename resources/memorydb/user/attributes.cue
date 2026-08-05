package user

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Indicates the user status. Can be "active", "modifying" or "deleting".
	Status: string
	// The Amazon Resource Name (ARN) of the user account.
	Arn: string
}
