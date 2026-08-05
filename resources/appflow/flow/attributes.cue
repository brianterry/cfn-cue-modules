package flow

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// ARN identifier of the flow.
	FlowArn: string & =~"arn:aws:appflow:.*:[0-9]+:.*" & strings.MaxRunes(512)
}
