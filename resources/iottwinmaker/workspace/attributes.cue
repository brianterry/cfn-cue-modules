package workspace

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the workspace.
	Arn: string & =~"arn:((aws)|(aws-cn)|(aws-us-gov)):iottwinmaker:[a-z0-9-]+:[0-9]{12}:[\\/a-zA-Z0-9_\\-\\.:]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The date and time when the workspace was created.
	CreationDateTime: #DateTimeFormat
	// The date and time of the current update.
	UpdateDateTime: #DateTimeFormat
}
