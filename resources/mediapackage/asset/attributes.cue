package asset

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the Asset.
	Arn: string
	// The time the Asset was initially submitted for Ingest.
	CreatedAt: string
	// The list of egress endpoints available for the Asset.
	EgressEndpoints: [...#EgressEndpoint]
}
