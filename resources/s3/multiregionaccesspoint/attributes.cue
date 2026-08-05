package multiregionaccesspoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The alias is a unique identifier to, and is part of the public DNS name for this Multi Region Access Point
	Alias: string
	// The timestamp of the when the Multi Region Access Point is created
	CreatedAt: string
}
