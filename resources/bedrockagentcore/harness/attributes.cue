package harness

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the harness.
	Arn: string & =~"^arn:([^:]+)?:bedrock-agentcore:[a-z0-9-]+:[0-9]{12}:harness/[a-zA-Z][a-zA-Z0-9_]{0,39}-[a-zA-Z0-9]{10}$"
	// The unique identifier of the harness.
	HarnessId: string & =~"^[a-zA-Z][a-zA-Z0-9_]{0,39}-[a-zA-Z0-9]{10}$"
	// The current status of the harness.
	Status: #HarnessStatus
	// The version of the harness. Incremented on every successful update.
	Version: string & =~"^([1-9][0-9]{0,4})$" & strings.MinRunes(1) & strings.MaxRunes(5)
	// The timestamp when the harness was created.
	CreatedAt: string
	// The timestamp when the harness was last updated.
	UpdatedAt: string
	// The AgentCore Memory configuration for persisting conversation context.
	Memory: #HarnessMemoryConfiguration
	// The compute environment configuration for the harness, including underlying runtime information.
	Environment: #HarnessEnvironmentProvider
}
