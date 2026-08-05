package enforcedguardrailconfiguration

import "strings"

#Properties: {
	// Identifier for the guardrail, could be the ID or the ARN
	GuardrailIdentifier: string & =~"^(([a-z0-9]+)|(arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+))$" & strings.MinRunes(0) & strings.MaxRunes(2048)
	// Numerical guardrail version (not DRAFT)
	GuardrailVersion: string & =~"^[1-9][0-9]{0,7}$"
	ModelEnforcement?: #ModelEnforcement
	SelectiveContentGuarding?: #SelectiveContentGuarding
}

#ModelEnforcement: {
	// Models to exclude from enforcement. If a model is in both lists, it is excluded
	ExcludedModels: [...string & =~"^([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2}(/[a-z0-9]{12}){0,1}$"]
	// Models to enforce the guardrail on
	IncludedModels: [...string & =~"^(ALL|([a-z0-9-]{1,63}[.]{1}[a-z0-9-]{1,63})([:][a-z0-9-]{1,63}){0,2}(/[a-z0-9]{12}){0,1})$"]
}

#SelectiveContentGuarding: {
	// Selective guarding mode for user messages
	Messages?: "SELECTIVE" | "COMPREHENSIVE"
	// Selective guarding mode for system prompts
	System?: "SELECTIVE" | "COMPREHENSIVE"
}
