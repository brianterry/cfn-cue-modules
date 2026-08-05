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

#AgentEndpointDescription: string & strings.MinRunes(1) & strings.MaxRunes(256)

#AgentRuntimeArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:runtime/[a-zA-Z][a-zA-Z0-9_]{0,99}-[a-zA-Z0-9]{10}$"

#AgentRuntimeEndpointArn: string & =~"^arn:(aws(?:-cn|-us-gov|-iso(?:-[bef])?)?):bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:runtime/[a-zA-Z0-9_-]+/runtime-endpoint/[a-zA-Z0-9_-]+$"

#AgentRuntimeEndpointId: string & =~"^[a-zA-Z0-9_-]+$"

#AgentRuntimeEndpointStatus: "CREATING" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "READY" | "DELETING"

#AgentRuntimeId: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,99}-[a-zA-Z0-9]{10}$"

#AgentRuntimeVersion: string & =~"^([1-9][0-9]{0,4})$"

#DateTimestamp: string

#EndpointName: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,47}$" & strings.MinRunes(1) & strings.MaxRunes(48)

#TagsMap: {...}
