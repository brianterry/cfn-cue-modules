package modelexplainabilityjobdefinition

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The time at which the job definition was created.
	CreationTime: string
	// The Amazon Resource Name (ARN) of job definition.
	JobDefinitionArn: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
