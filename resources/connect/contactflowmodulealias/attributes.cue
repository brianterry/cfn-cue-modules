package contactflowmodulealias

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The identifier of the contact flow module alias (ARN). This is constructed from the ContactFlowModuleArn and AliasId.
	ContactFlowModuleAliasARN: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]+:[0-9]{12}:instance/[-a-zA-Z0-9]+/flow-module/[-a-zA-Z0-9]+:[-a-zA-Z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(500)
	// The unique identifier of the alias.
	AliasId: string & strings.MinRunes(1) & strings.MaxRunes(500)
}
