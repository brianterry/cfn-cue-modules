package flowalias

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Arn of the Flow Alias
	Arn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:flow/[0-9a-zA-Z]{10}/alias/[0-9a-zA-Z]{10}$" & strings.MaxRunes(2048)
	// Time Stamp.
	CreatedAt: string
	// Identifier for a flow resource.
	FlowId: string & =~"^[0-9a-zA-Z]{10}$"
	// Id for a Flow Alias generated at the server side.
	Id: string & =~"^(\\bTSTALIASID\\b|[0-9a-zA-Z]+)$" & strings.MinRunes(10) & strings.MaxRunes(10)
	// Time Stamp.
	UpdatedAt: string
}
