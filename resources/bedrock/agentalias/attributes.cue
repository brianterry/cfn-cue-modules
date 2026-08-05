package agentalias

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Arn representation of the Agent Alias.
	AgentAliasArn: string & =~"^arn:aws(|-cn|-us-gov):bedrock:[a-z0-9-]{1,20}:[0-9]{12}:agent-alias/[0-9a-zA-Z]{10}/[0-9a-zA-Z]{10}$" & strings.MaxRunes(2048)
	// The list of history events for an alias for an Agent.
	AgentAliasHistoryEvents: [...#AgentAliasHistoryEvent]
	// Id for an Agent Alias generated at the server side.
	AgentAliasId: string & =~"^(\\bTSTALIASID\\b|[0-9a-zA-Z]+)$" & strings.MinRunes(10) & strings.MaxRunes(10)
	AgentAliasStatus: #AgentAliasStatus
	// Time Stamp.
	CreatedAt: string
	// Time Stamp.
	UpdatedAt: string
}
