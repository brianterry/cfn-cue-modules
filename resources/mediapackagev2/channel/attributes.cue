package channel

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) associated with the resource.</p>
	Arn: string
	// <p>The date and time the channel was created.</p>
	CreatedAt: string
	// <p>The list of ingest endpoints.</p>
	IngestEndpoints: [...#IngestEndpoint]
	IngestEndpointUrls: [...string]
	// <p>The date and time the channel was modified.</p>
	ModifiedAt: string
}
