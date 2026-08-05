package automationrule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	RuleArn: string & =~"arn:aws\\S*:securityhub:\\S*"
	CreatedAt: #ISO8601DateString
	UpdatedAt: #ISO8601DateString
	CreatedBy: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
