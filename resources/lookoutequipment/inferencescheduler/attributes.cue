package inferencescheduler

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the inference scheduler being created.
	InferenceSchedulerArn: string & =~"arn:aws(-[^:]+)?:lookoutequipment:[a-zA-Z0-9\\-]*:[0-9]{12}:inference-scheduler\\/.+" & strings.MinRunes(1) & strings.MaxRunes(200)
}
