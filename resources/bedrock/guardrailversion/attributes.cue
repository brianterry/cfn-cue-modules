package guardrailversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Arn representation for the guardrail
	GuardrailArn: string & =~"^arn:aws(-[^:]+)?:bedrock:[a-z0-9-]{1,20}:[0-9]{12}:guardrail/[a-z0-9]+$" & strings.MaxRunes(2048)
	// Unique id for the guardrail
	GuardrailId: string & =~"^[a-z0-9]+$" & strings.MaxRunes(64)
	// Guardrail version
	Version: string & =~"^[1-9][0-9]{0,7}$"
}
