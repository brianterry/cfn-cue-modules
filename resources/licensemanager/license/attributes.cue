package license

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name is a unique name for each resource.
	LicenseArn: #Arn
	// The version of the license.
	Version: string
}
