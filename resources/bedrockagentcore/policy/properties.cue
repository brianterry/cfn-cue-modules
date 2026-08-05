package policy

import "strings"

#Properties: {
	Definition: #PolicyDefinition
	// A human-readable description of the policy's purpose and functionality.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(4096)
	EnforcementMode?: #EnforcementMode
	// The customer-assigned immutable name for the policy. Must be unique within the policy engine.
	Name: string & =~"^[A-Za-z][A-Za-z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(48)
	// The identifier of the policy engine which contains this policy.
	PolicyEngineId: string & =~"^[A-Za-z][A-Za-z0-9_]*-[a-z0-9_]{10}$" & strings.MinRunes(12) & strings.MaxRunes(59)
	ValidationMode?: #PolicyValidationMode
}

#CedarPolicy: {
	// The Cedar policy statement that defines the authorization logic.
	Statement: string & strings.MinRunes(35) & strings.MaxRunes(10000)
}

#EnforcementMode: "ACTIVE" | "LOG_ONLY"

#PolicyDefinition: {
	Cedar?: #CedarPolicy
	Policy?: #PolicyStatement
}

#PolicyStatement: {
	// The policy statement.
	Statement: string & strings.MinRunes(35) & strings.MaxRunes(10000)
}

#PolicyStatus: "CREATING" | "ACTIVE" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED"

#PolicyValidationMode: "FAIL_ON_ANY_FINDINGS" | "IGNORE_ALL_FINDINGS"
