package workspace

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the workspace.
	Arn: string & =~"^arn:[a-zA-Z0-9_\\-]+:aws-external-anthropic:[a-zA-Z0-9_\\-]+:[0-9]+:workspace/wrkspc_[A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The timestamp when the workspace was created.
	CreatedAt: string
	// The unique identifier of the workspace.
	Id: string & =~"^wrkspc_[A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}
