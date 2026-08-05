package workflow

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// A unique identifier for the workflow.
	WorkflowId: string & =~"^w-([a-z0-9]{17})$" & strings.MinRunes(19) & strings.MaxRunes(19)
	// Specifies the unique Amazon Resource Name (ARN) for the workflow.
	Arn: string & =~"arn:.*" & strings.MinRunes(20) & strings.MaxRunes(1600)
}
