package space

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the space.
	Arn: string & =~"^arn:aws[a-zA-Z-]*:quicksight:[a-z0-9-]+:[0-9]{12}:space/.+$"
	// The date and time the space was created.
	CreatedAt: string
	// The date and time the space was last updated.
	UpdatedAt: string
	// The user name of the principal who created the space.
	CreatedBy: string
}
