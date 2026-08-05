package vpcconnection

#Properties: {
	Authentication: #Authentication
	ClientSubnets: #ClientSubnets
	SecurityGroups: #SecurityGroups
	Tags?: #Tags
	// The Amazon Resource Name (ARN) of the target cluster
	TargetClusterArn: string & =~"^arn:[\\w-]+:kafka:[\\w-]+:\\d+:cluster.*\\Z"
	VpcId: #VpcId
}
