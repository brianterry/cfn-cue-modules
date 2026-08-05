package caserule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of a case rule.
	CaseRuleId: string & strings.MinRunes(1) & strings.MaxRunes(500)
	// The time at which the case rule was created.
	CreatedTime: string
	// The time at which the case rule was created or last modified.
	LastModifiedTime: string
	// The Amazon Resource Name (ARN) of a case rule.
	CaseRuleArn: string & strings.MinRunes(1) & strings.MaxRunes(500)
}
