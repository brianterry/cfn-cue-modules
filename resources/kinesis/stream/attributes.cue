package stream

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon resource name (ARN) of the Kinesis stream
	Arn: string
	// Warm throughput configuration details for the stream. Only present for ON_DEMAND streams.
	WarmThroughputObject: #WarmThroughputObject
}
