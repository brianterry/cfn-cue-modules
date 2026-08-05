package workflowversion

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn:.+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	CreationTime: string
	Status: #WorkflowStatus
	Type: #WorkflowType
	Uuid: string & =~"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$" & strings.MinRunes(1) & strings.MaxRunes(36)
}
