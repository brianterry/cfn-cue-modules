package privategraphendpoint

#Properties: {
	// The auto-generated Graph Id assigned by the service.
	GraphIdentifier: string
	// The security group Ids associated with the VPC where you want the private graph endpoint to be created, ie, the graph will be reachable from within the VPC.
	SecurityGroupIds?: [...string]
	// The subnet Ids associated with the VPC where you want the private graph endpoint to be created, ie, the graph will be reachable from within the VPC.
	SubnetIds?: [...string]
	// The VPC where you want the private graph endpoint to be created, ie, the graph will be reachable from within the VPC.
	VpcId: string
}
