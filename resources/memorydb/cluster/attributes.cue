package cluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The status of the cluster. For example, Available, Updating, Creating.
	Status: string
	// The cluster endpoint.
	ClusterEndpoint: #Endpoint
	// The Amazon Resource Name (ARN) of the cluster.
	ARN: string
	// The status of the parameter group used by the cluster.
	ParameterGroupStatus: string
}
