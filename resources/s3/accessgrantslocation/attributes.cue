package accessgrantslocation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the specified Access Grants location.
	AccessGrantsLocationArn: string
	// The unique identifier for the specified Access Grants location.
	AccessGrantsLocationId: string
}
