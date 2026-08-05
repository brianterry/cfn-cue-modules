package serverlesscache

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The full engine version of the Serverless Cache.
	FullEngineVersion: string
	// The creation time of the Serverless Cache.
	CreateTime: string
	// The status of the Serverless Cache.
	Status: string
	Endpoint: #Endpoint
	ReaderEndpoint: #Endpoint
	// The ARN of the Serverless Cache.
	ARN: string
}
