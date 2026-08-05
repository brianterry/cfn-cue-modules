package cluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the cluster.
	ClusterArn: string & =~"^[A-Za-z0-9:\\/_-]*$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Endpoints for the cluster.
	ClusterEndpoints: [...#ClusterEndpoint]
	// Deployment status of a resource. Status can be one of the following: PENDING, DEPLOYED, PENDING_DELETION.
	Status: "PENDING" | "DEPLOYED" | "PENDING_DELETION"
}
