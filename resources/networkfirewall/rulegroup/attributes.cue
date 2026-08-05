package rulegroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	RuleGroupArn: #ResourceArn
	RuleGroupId: string & =~"^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$" & strings.MinRunes(36) & strings.MaxRunes(36)
}
