package agent

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the agent.
	Arn: string
	// The current status of the agent. One of ACTIVE, CREATING, UPDATING, or FAILED.
	AgentStatus: "ACTIVE" | "CREATING" | "UPDATING" | "FAILED"
	// The date and time the agent was created.
	CreatedAt: string
	// The date and time the agent was last updated.
	UpdatedAt: string
	// The ARN of the user who created the agent.
	Creator: string
	CustomPromptInterface: #CustomPromptInterface
	// The error message if the agent is in FAILED status.
	ErrorMessage: string
}
