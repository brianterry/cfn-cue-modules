package computationmodel

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the computation model.
	ComputationModelArn: string & =~"^arn:aws(-cn|-us-gov)?:[a-zA-Z0-9-:/_\\.]+$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	// The ID of the computation model.
	ComputationModelId: string & =~"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
}
