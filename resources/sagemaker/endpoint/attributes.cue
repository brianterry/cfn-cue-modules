package endpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the endpoint.
	EndpointArn: string
	// The name of the SageMaker endpoint. This name must be unique within an AWS Region.
	EndpointName: string
}
