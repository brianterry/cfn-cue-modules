package vpclink

#Properties: {
	// The name of the VPC link.
	Name: string
	// A list of security group IDs for the VPC link.
	SecurityGroupIds?: [...string]
	// A list of subnet IDs to include in the VPC link.
	SubnetIds: [...string]
	// The collection of tags. Each tag element is associated with a given resource.
	Tags?: {...}
}
