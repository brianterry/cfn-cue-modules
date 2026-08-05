package cluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) for the cluster.
	ResourceArn: string
	// The ID of the created cluster.
	Identifier: string
	// The time of when the cluster was created in ISO-8601 format.
	CreationTime: string
	// The status of the cluster.
	Status: string
	// The VPC endpoint service name.
	VpcEndpointServiceName: string
	// The encryption configuration details for the cluster.
	EncryptionDetails: {
	EncryptionStatus?: string
	EncryptionType?: string
	KmsKeyArn?: string
}
	// The version number of the cluster's resource based policy
	PolicyVersion: string
	// The DSQL cluster endpoint.
	Endpoint: string
	// The DSQL cluster VPC endpoint.
	VpcEndpoint: string
}
