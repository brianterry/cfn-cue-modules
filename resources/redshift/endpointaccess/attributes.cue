package endpointaccess

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The DNS address of the endpoint.
	Address: string
	// The status of the endpoint.
	EndpointStatus: string
	// The time (UTC) that the endpoint was created.
	EndpointCreateTime: string
	// The port number on which the cluster accepts incoming connections.
	Port: int
	// A list of Virtual Private Cloud (VPC) security groups to be associated with the endpoint.
	VpcSecurityGroups: [...#VpcSecurityGroup]
	// The connection endpoint for connecting to an Amazon Redshift cluster through the proxy.
	VpcEndpoint: {
	NetworkInterfaces?: [...#NetworkInterface]
	VpcEndpointId?: string
	VpcId?: string
}
}
