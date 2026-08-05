package endpointauthorization

#Properties: {
	// The target AWS account ID to grant or revoke access for.
	Account: #AwsAccount
	// The cluster identifier.
	ClusterIdentifier: string & =~"^(?=^[a-z][a-z0-9]*(-[a-z0-9]+)*$).{1,63}$"
	// Indicates whether to force the revoke action. If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted.
	Force?: bool
	// The virtual private cloud (VPC) identifiers to grant or revoke access to.
	VpcIds?: [...#VpcId]
}

#AwsAccount: string & =~"^\\d{12}$"

#VpcId: string & =~"^vpc-[A-Za-z0-9]{1,17}$"
