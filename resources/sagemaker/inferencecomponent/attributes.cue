package inferencecomponent

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	InferenceComponentArn: #InferenceComponentArn
	Specification: #InferenceComponentSpecification
	RuntimeConfig: #InferenceComponentRuntimeConfig
	CreationTime: #Timestamp
	LastModifiedTime: #Timestamp
	FailureReason: #FailureReason
	InferenceComponentStatus: #InferenceComponentStatus
}
