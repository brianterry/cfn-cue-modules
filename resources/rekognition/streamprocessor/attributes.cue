package streamprocessor

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: #Arn
	// Current status of the stream processor.
	Status: string
	// Detailed status message about the stream processor.
	StatusMessage: string
}
