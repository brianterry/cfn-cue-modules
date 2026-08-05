package agentspace

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique identifier of the agent space
	AgentSpaceId: string
	// Timestamp when the agent space was created
	CreatedAt: string
	// Timestamp when the agent space was last updated
	UpdatedAt: string
	IntegratedResources: #IntegratedResources
}
