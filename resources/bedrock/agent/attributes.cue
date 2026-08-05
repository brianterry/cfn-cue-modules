package agent

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Arn representation of the Agent.
	AgentArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent/[0-9a-zA-Z]{10}$" & strings.MaxRunes(2048)
	// Identifier for a resource.
	AgentId: string & =~"^[0-9a-zA-Z]{10}$"
	AgentStatus: #AgentStatus
	// Draft Agent Version.
	AgentVersion: string & =~"^DRAFT$" & strings.MinRunes(5) & strings.MaxRunes(5)
	// Time Stamp.
	CreatedAt: string
	// Failure Reasons for Error.
	FailureReasons: [...string & strings.MaxRunes(2048)]
	// Time Stamp.
	PreparedAt: string
	// The recommended actions users can take to resolve an error in failureReasons.
	RecommendedActions: [...string & strings.MaxRunes(2048)]
	// Time Stamp.
	UpdatedAt: string
}
