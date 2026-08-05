package automationrulev2

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the automation rule
	RuleArn: string & =~"^arn:aws\\S*:securityhub:[a-z0-9-]+:[0-9]{12}:automation-rulev2/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
	// The ID of the automation rule
	RuleId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"
	CreatedAt: #ISO8601DateString
	UpdatedAt: #ISO8601DateString
}
