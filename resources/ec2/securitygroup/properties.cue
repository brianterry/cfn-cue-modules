package securitygroup

#Properties: {
	// A description for the security group.
	GroupDescription: string
	// The name of the security group.
	GroupName?: string
	// [VPC only] The outbound rules associated with the security group. There is a short interruption during which you cannot connect to the security group.
	SecurityGroupEgress?: [...#Egress]
	// The inbound rules associated with the security group. There is a short interruption during which you cannot connect to the security group.
	SecurityGroupIngress?: [...#Ingress]
	// Any tags assigned to the security group.
	Tags?: [...#Tag]
	// The ID of the VPC for the security group.
	VpcId?: string
}

#Egress: {
	CidrIp?: string
	CidrIpv6?: string
	Description?: string
	DestinationPrefixListId?: string
	DestinationSecurityGroupId?: string
	FromPort?: int
	IpProtocol: string
	ToPort?: int
}

#Ingress: {
	CidrIp?: string
	CidrIpv6?: string
	Description?: string
	FromPort?: int
	IpProtocol: string
	SourcePrefixListId?: string
	SourceSecurityGroupId?: string
	SourceSecurityGroupName?: string
	SourceSecurityGroupOwnerId?: string
	ToPort?: int
}

#Tag: {
	Key: string
	Value: string
}
