package originendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
	Arn: string
	// The URL of the packaged OriginEndpoint for consumption.
	Url: string
}
