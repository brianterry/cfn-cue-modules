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

#Authentication: "SASL_IAM" | "SASL_SCRAM" | "TLS"

#ClientSubnets: [...string & =~"^(subnet-)([a-z0-9]+)\\Z"]

#SecurityGroups: [...string & =~"^(sg-)([a-z0-9]+)\\Z"]

#Tags: {...}

#VpcId: string & =~"^(vpc-)([a-z0-9]+)\\Z"
