package runtimeendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the AgentCore Runtime endpoint.
	Id: #AgentRuntimeEndpointId
	// The Amazon Resource Name (ARN) of the AgentCore Runtime.
	AgentRuntimeEndpointArn: #AgentRuntimeEndpointArn
	// The ARN of the Agent Runtime
	AgentRuntimeArn: #AgentRuntimeArn
	// The status of the Agent Runtime Endpoint
	Status: #AgentRuntimeEndpointStatus
	// The timestamp when the Agent Runtime Endpoint was created
	CreatedAt: #DateTimestamp
	// The timestamp when the Agent Runtime Endpoint was last updated
	LastUpdatedAt: #DateTimestamp
	// The reason for failure if the endpoint is in a failed state
	FailureReason: string
	// The target version of the AgentCore Runtime for the endpoint.
	TargetVersion: #AgentRuntimeVersion
	// The Live version of the Agent Runtime
	LiveVersion: #AgentRuntimeVersion
}
