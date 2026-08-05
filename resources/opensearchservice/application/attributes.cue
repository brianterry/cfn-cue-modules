package application

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the application.
	Id: string & strings.MinRunes(3) & strings.MaxRunes(40)
	// Amazon Resource Name (ARN) format.
	Arn: string
}
