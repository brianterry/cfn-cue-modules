package fleet

#Properties: {
	ComputeCapacity?: #ComputeCapacity
	Description?: string
	DisableIMDSV1?: bool
	DisconnectTimeoutInSeconds?: int
	DisplayName?: string
	DomainJoinInfo?: #DomainJoinInfo
	EnableDefaultInternetAccess?: bool
	FleetType?: string
	IamRoleArn?: string
	IdleDisconnectTimeoutInSeconds?: int
	ImageArn?: string
	ImageName?: string
	InstanceType: string
	MaxConcurrentSessions?: int
	MaxSessionsPerInstance?: int
	MaxUserDurationInSeconds?: int
	Name: string
	Platform?: string
	RootVolumeConfig?: #VolumeConfig
	SessionScriptS3Location?: #S3Location
	StreamView?: string
	Tags?: [...#Tag]
	UsbDeviceFilterStrings?: [...string]
	VpcConfig?: #VpcConfig
}

#ComputeCapacity: {
	DesiredInstances?: int
	DesiredSessions?: int
}

#DomainJoinInfo: {
	DirectoryName?: string
	OrganizationalUnitDistinguishedName?: string
}

#S3Location: {
	S3Bucket: string
	S3Key: string
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
