package servercertificate

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Amazon Resource Name (ARN) of the server certificate
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(1600)
}
