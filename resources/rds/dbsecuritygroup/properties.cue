package dbsecuritygroup

#Properties: {
	DBSecurityGroupIngress: [...#Ingress]
	EC2VpcId?: string
	GroupDescription: string
	Tags?: [...#Tag]
}

#Ingress: {
	CIDRIP?: string
	EC2SecurityGroupId?: string
	EC2SecurityGroupName?: string
	EC2SecurityGroupOwnerId?: string
}

#Tag: {
	Key: string
	Value: string
}
