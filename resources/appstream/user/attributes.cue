package user

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Returns the Amazon Resource Name (ARN) for the Amazon AppStream User resource.
	Arn: string & =~"^arn:.*"
}
