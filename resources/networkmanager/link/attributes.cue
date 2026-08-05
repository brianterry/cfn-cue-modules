package link

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ID of the link.
	LinkId: string
	// The Amazon Resource Name (ARN) of the link.
	LinkArn: string
	// The date and time that the device was created.
	CreatedAt: string
	// The state of the link.
	State: string
}
