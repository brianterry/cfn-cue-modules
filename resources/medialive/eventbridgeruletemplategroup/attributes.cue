package eventbridgeruletemplategroup

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// An eventbridge rule template group's ARN (Amazon Resource Name)
	Arn: string & =~"^arn:.+:medialive:.+:eventbridge-rule-template-group:.+$"
	CreatedAt: string
	// An eventbridge rule template group's id. AWS provided template groups have ids that start with `aws-`
	Id: string & =~"^(aws-)?[0-9]{7}$" & strings.MinRunes(7) & strings.MaxRunes(11)
	Identifier: string
	ModifiedAt: string
}
