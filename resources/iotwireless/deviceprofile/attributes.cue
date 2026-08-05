package deviceprofile

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Service profile Arn. Returned after successful create.
	Arn: string
	// Service profile Id. Returned after successful create.
	Id: string & strings.MaxRunes(256)
}
