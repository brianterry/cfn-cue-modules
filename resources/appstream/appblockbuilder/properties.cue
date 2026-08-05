package appblockbuilder

#Properties: {
	AccessEndpoints?: [...#AccessEndpoint]
	AppBlockArns?: [...#Arn]
	Description?: string
	DisplayName?: string
	EnableDefaultInternetAccess?: bool
	IamRoleArn?: string
	InstanceType: string
	Name: string
	Platform: #PlatformType
	Tags?: [...#Tag]
	VpcConfig: #VpcConfig
}

#AccessEndpoint: {
	EndpointType: string
	VpceId: string
}

#Arn: string

#PlatformType: string

#Tag: {
	Key: string
	Value: string
}

#VpcConfig: {
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}
