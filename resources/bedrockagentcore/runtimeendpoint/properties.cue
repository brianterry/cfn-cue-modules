package runtimeendpoint

#Properties: {
	// The ID of the parent Agent Runtime (required for creation)
	AgentRuntimeId: #AgentRuntimeId
	// The version of the AgentCore Runtime to use for the endpoint.
	AgentRuntimeVersion?: #AgentRuntimeVersion
	// The description of the AgentCore Runtime endpoint.
	Description?: #AgentEndpointDescription
	// The name of the Agent Runtime Endpoint
	Name: #EndpointName
	Tags?: #TagsMap
}
