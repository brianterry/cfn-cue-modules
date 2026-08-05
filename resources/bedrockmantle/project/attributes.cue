package project

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the project.
	Arn: string & =~"^arn:[a-zA-Z0-9_\\-]+:bedrock-mantle:[a-zA-Z0-9_\\-]+:[0-9]+:project/(default|proj_[a-z0-9]+)$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The timestamp when the project was created.
	CreatedAt: string
	// The unique identifier of the project.
	Id: string & =~"^(default|proj_[a-z0-9]+)$" & strings.MinRunes(1) & strings.MaxRunes(25)
}
