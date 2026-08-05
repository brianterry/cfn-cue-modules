package automationrule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the automation rule.
	RuleArn: string
	// The unique identifier of the automation rule.
	RuleId: string & =~"^[0-9A-Za-z]{16}$"
	// The revision number of the automation rule.
	RuleRevision: string
	// The AWS account ID that owns the automation rule.
	AccountId: string & =~"^[0-9]{12}$"
	// The timestamp when the automation rule was created.
	CreatedTimestamp: string
	// The timestamp when the automation rule was last updated.
	LastUpdatedTimestamp: string
}
