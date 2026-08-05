package agent

import "strings"

#Properties: {
	// A list of ActionConnector ARNs (max 10) attached to the agent.
	ActionConnectors?: [...string]
	// The unique identifier for the agent.
	AgentId: string & =~"^[0-9a-zA-Z-_.+]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The lifecycle stage of the agent. PREVIEW or PUBLISHED.
	AgentLifecycle?: "PREVIEW" | "PUBLISHED"
	// The ID of the Amazon Web Services account where the agent is being created.
	AwsAccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	CustomPromptInput?: #CustomPromptInput
	// A description of the agent.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1000)
	// The icon identifier for the agent.
	IconId?: string & strings.MinRunes(1) & strings.MaxRunes(200)
	// The display name of the agent.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(50)
	// A list of Space ARNs (max 10) attached to the agent.
	Spaces?: [...string]
	// A list of up to 3 starter prompts displayed to users.
	StarterPrompts?: [...string]
	// A list of key-value pairs to associate with the agent resource.
	Tags?: [...#AgentTag]
	// The welcome message displayed when a user opens the agent.
	WelcomeMessage?: string & strings.MaxRunes(300)
}

#AgentTag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#CustomPromptInput: {
	ExistingPrompt?: #CustomPromptProfile
	NewPrompt?: #CustomPromptInputParameters
}

#CustomPromptInputParameters: {
	// Custom instructions for the agent behavior.
	CustomInstructions?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
	// The identity or persona of the agent.
	Identity?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
	// The output style for the agent responses.
	OutputStyle?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
	// The desired response length for the agent.
	ResponseLength?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
	// The tone used in agent responses.
	Tone?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
}

#CustomPromptInterface: {
	// Custom instructions for the agent behavior.
	CustomInstructions?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
	// The identity or persona of the agent.
	Identity?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
	// The identifier of the model profile.
	ModelProfileId?: string & =~"^[a-zA-Z0-9][a-zA-Z0-9-]{35}$" & strings.MinRunes(36) & strings.MaxRunes(36)
	// The output style for the agent responses.
	OutputStyle?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
	// A summary of the resolved prompt.
	PromptSummary?: string
	// The QBS AWS account identifier.
	QbsAwsAccountId?: string & =~"^QBS[0-9]{12}$" & strings.MinRunes(15) & strings.MaxRunes(15)
	// The desired response length for the agent.
	ResponseLength?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
	// The subscription identifier.
	SubscriptionId?: string & =~"^[a-z0-9]+$" & strings.MinRunes(32) & strings.MaxRunes(32)
	// The tone used in agent responses.
	Tone?: string & strings.MinRunes(5) & strings.MaxRunes(350000)
}

#CustomPromptProfile: {
	// The identifier of the model profile.
	ModelProfileId: string & strings.MaxRunes(36)
	// The QBS AWS account identifier.
	QbsAwsAccountId: string & =~"^QBS[0-9]{12}$" & strings.MaxRunes(15)
	// The subscription identifier.
	SubscriptionId: string & strings.MaxRunes(32)
}
