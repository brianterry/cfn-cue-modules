package agentspace

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the AgentSpace
	AgentSpaceId: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The timestamp when the resource was created.
	CreatedAt: string
	// The timestamp when the resource was last updated.
	UpdatedAt: string
	// The Amazon Resource Name (ARN) of the AgentSpace.
	Arn: string
	OperatorApp: #OperatorApp
}
