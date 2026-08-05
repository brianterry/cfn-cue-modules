package channel

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) assigned to the Channel.
	Arn: string
	// An HTTP Live Streaming (HLS) ingest resource configuration.
	HlsIngest: #HlsIngest
}
