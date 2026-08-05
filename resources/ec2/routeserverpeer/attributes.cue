package routeserverpeer

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the Route Server Peer.
	Arn: string
	// The ID of the Route Server Peer.
	Id: string
	// Route Server ID
	RouteServerId: string
	// Elastic Network Interface ID owned by the Route Server Endpoint
	EndpointEniId: string
	// Elastic Network Interface IP address owned by the Route Server Endpoint
	EndpointEniAddress: string
	// Subnet ID
	SubnetId: string
	// VPC ID
	VpcId: string
}
