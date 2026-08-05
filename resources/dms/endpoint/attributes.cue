package endpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The endpoint ARN.
	EndpointArn: string
	// A value that can be used for cross-account validation.
	ExternalId: string
}
