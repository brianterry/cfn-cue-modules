package function

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	FunctionARN: string
	// Contains metadata about a CloudFront function.
	FunctionMetadata: #FunctionMetadata
	Stage: string
}
