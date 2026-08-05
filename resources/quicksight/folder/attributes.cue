package folder

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) for the folder.</p>
	Arn: string & =~"^arn:.*"
	// <p>The time that the folder was created.</p>
	CreatedTime: string
	// <p>The time that the folder was last updated.</p>
	LastUpdatedTime: string
}
