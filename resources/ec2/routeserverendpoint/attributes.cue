package routeserverendpoint

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the Route Server Endpoint.
	Arn: string
	// The ID of the Route Server Endpoint.
	Id: string
	// Elastic Network Interface ID owned by the Route Server Endpoint
	EniId: string
	// Elastic Network Interface IP address owned by the Route Server Endpoint
	EniAddress: string
	// VPC ID
	VpcId: string
}
