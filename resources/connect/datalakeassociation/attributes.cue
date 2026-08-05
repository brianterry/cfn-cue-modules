package datalakeassociation

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The AWS Resource Access Manager share ID
	ResourceShareId: string
	// The Amazon Resource Name (ARN) of the AWS Resource Access Manager share
	ResourceShareArn: string & strings.MaxRunes(2048)
}
