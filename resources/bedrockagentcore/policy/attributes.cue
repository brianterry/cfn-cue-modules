package policy

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier for the policy.
	PolicyId: string & =~"^[A-Za-z][A-Za-z0-9_]*-[a-z0-9_]{10}$" & strings.MinRunes(12) & strings.MaxRunes(59)
	// The Amazon Resource Name (ARN) of the policy.
	PolicyArn: string & =~"^arn:aws[-a-z]{0,7}:bedrock-agentcore:[a-z0-9-]{9,15}:[0-9]{12}:policy-engine/[a-zA-Z][a-zA-Z0-9-_]{0,47}-[a-zA-Z0-9_]{10}/policy/[a-zA-Z][a-zA-Z0-9-_]{0,47}-[a-zA-Z0-9_]{10}$" & strings.MinRunes(96) & strings.MaxRunes(203)
	// The timestamp when the policy was created.
	CreatedAt: string
	// The timestamp when the policy was last updated.
	UpdatedAt: string
	// The current status of the policy.
	Status: #PolicyStatus
	// Additional information about the policy status.
	StatusReasons: [...string]
}
