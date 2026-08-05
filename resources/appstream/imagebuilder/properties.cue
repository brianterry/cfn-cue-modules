package imagebuilder

#Properties: {
	AccessEndpoints?: [...#AccessEndpoint]
	AppstreamAgentVersion?: string
	Description?: string
	DisplayName?: string
	DomainJoinInfo?: #DomainJoinInfo
	EnableDefaultInternetAccess?: bool
	IamRoleArn?: string
	ImageArn?: string
	ImageName?: string
	InstanceType: string
	Name: string
	RootVolumeConfig?: #VolumeConfig
	SoftwaresToInstall?: [...string]
	SoftwaresToUninstall?: [...string]
	Tags?: [...#Tag]
	VpcConfig?: #VpcConfig
}

#AccessEndpoint: {
	EndpointType: string
	VpceId: string
}

#DomainJoinInfo: {
	DirectoryName?: string
	OrganizationalUnitDistinguishedName?: string
}

#Tag: {
	Key: string
	Value: string
}

#VolumeConfig: {
	VolumeSizeInGb?: int
}

#VpcConfig: {
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}
