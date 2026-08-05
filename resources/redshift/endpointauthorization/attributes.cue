package endpointauthorization

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The AWS account ID of the cluster owner.
	Grantor: #AwsAccount
	// The AWS account ID of the grantee of the cluster.
	Grantee: #AwsAccount
	// The time (UTC) when the authorization was created.
	AuthorizeTime: string
	// The status of the cluster.
	ClusterStatus: string
	// The status of the authorization action.
	Status: string
	// Indicates whether all VPCs in the grantee account are allowed access to the cluster.
	AllowedAllVPCs: bool
	// The VPCs allowed access to the cluster.
	AllowedVPCs: [...#VpcId]
	// The number of Redshift-managed VPC endpoints created for the authorization.
	EndpointCount: int
}
