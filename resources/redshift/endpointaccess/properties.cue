package endpointaccess

#Properties: {
	// A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. All alphabetical characters must be lower case, no hypens at the end, no two consecutive hyphens. Cluster name should be unique for all clusters within an AWS account
	ClusterIdentifier: string
	// The name of the endpoint.
	EndpointName: string & =~"^(?=^[a-z][a-z0-9]*(-[a-z0-9]+)*$).{1,30}$"
	// The AWS account ID of the owner of the cluster.
	ResourceOwner?: string & =~"^\\d{12}$"
	// The subnet group name where Amazon Redshift chooses to deploy the endpoint.
	SubnetGroupName: string & =~"^(?=^[a-zA-Z0-9-]+$).{1,255}$"
	// A list of vpc security group ids to apply to the created endpoint access.
	VpcSecurityGroupIds: [...string]
}

#NetworkInterface: {
	// The Availability Zone.
	AvailabilityZone?: string
	// The network interface identifier.
	NetworkInterfaceId?: string
	// The IPv4 address of the network interface within the subnet.
	PrivateIpAddress?: string
	// The subnet identifier.
	SubnetId?: string
}

#VpcSecurityGroup: {
	// The status of the VPC security group.
	Status?: string
	// The identifier of the VPC security group.
	VpcSecurityGroupId?: string
}
