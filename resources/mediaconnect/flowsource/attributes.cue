package flowsource

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The IP address that the flow will be listening on for incoming content.
	IngestIp: string
	// The ARN of the source.
	SourceArn: string & =~"^arn:(aws[a-zA-Z-]*):mediaconnect:[a-z0-9-]+:[0-9]{12}:source:[a-zA-Z0-9-]+:[a-zA-Z0-9_-]+$"
	// The port that the flow will be listening on for incoming content.(ReadOnly)
	SourceIngestPort: string
}
