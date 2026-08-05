package enforcedguardrailconfiguration

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Unique ID for the account enforced configuration
	ConfigId: string & =~"^[a-z0-9]+$"
	// ARN representation for the guardrail
	GuardrailArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+$" & strings.MinRunes(0) & strings.MaxRunes(2048)
	// Unique ID for the guardrail
	GuardrailId: string & =~"^[a-z0-9]+$" & strings.MinRunes(0) & strings.MaxRunes(64)
	// Timestamp when the configuration was created
	CreatedAt: string
	// The ARN of the role used to create the configuration
	CreatedBy: string
	// Timestamp when the configuration was last updated
	UpdatedAt: string
	// The ARN of the role used to update the configuration
	UpdatedBy: string
	Owner: #ConfigOwner
}
