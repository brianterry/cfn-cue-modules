package runtime

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name(ARN) that uniquely identifies the Agent
	AgentRuntimeArn: #AgentRuntimeArn
	// Identifier for a resource
	AgentRuntimeId: #AgentRuntimeId
	// Version of the Agent
	AgentRuntimeVersion: #AgentRuntimeVersion
	// Current status of the agent
	Status: #AgentStatus
	// Timestamp when the Agent was created
	CreatedAt: #CreatedAt
	// When resource was last updated
	LastUpdatedAt: #LastUpdatedAt
	// Workload identity details for the agent
	WorkloadIdentityDetails: #WorkloadIdentityDetails
	// The reason for failure if the agent is in a failed state.
	FailureReason: string
}
