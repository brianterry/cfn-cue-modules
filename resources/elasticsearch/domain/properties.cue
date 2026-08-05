package domain

#Properties: {
	AccessPolicies?: {...}
	AdvancedOptions?: {...}
	AdvancedSecurityOptions?: #AdvancedSecurityOptionsInput
	CognitoOptions?: #CognitoOptions
	DomainEndpointOptions?: #DomainEndpointOptions
	DomainName?: string
	EBSOptions?: #EBSOptions
	ElasticsearchClusterConfig?: #ElasticsearchClusterConfig
	ElasticsearchVersion?: string
	EncryptionAtRestOptions?: #EncryptionAtRestOptions
	LogPublishingOptions?: {...}
	NodeToNodeEncryptionOptions?: #NodeToNodeEncryptionOptions
	SnapshotOptions?: #SnapshotOptions
	Tags?: [...#Tag]
	VPCOptions?: #VPCOptions
}

#AdvancedSecurityOptionsInput: {
	AnonymousAuthEnabled?: bool
	Enabled?: bool
	InternalUserDatabaseEnabled?: bool
	MasterUserOptions?: #MasterUserOptions
}

#CognitoOptions: {
	Enabled?: bool
	IdentityPoolId?: string
	RoleArn?: string
	UserPoolId?: string
}

#ColdStorageOptions: {
	Enabled?: bool
}

#DomainEndpointOptions: {
	CustomEndpoint?: string
	CustomEndpointCertificateArn?: string
	CustomEndpointEnabled?: bool
	EnforceHTTPS?: bool
	TLSSecurityPolicy?: string
}

#EBSOptions: {
	EBSEnabled?: bool
	Iops?: int
	VolumeSize?: int
	VolumeType?: string
}

#ElasticsearchClusterConfig: {
	ColdStorageOptions?: #ColdStorageOptions
	DedicatedMasterCount?: int
	DedicatedMasterEnabled?: bool
	DedicatedMasterType?: string
	InstanceCount?: int
	InstanceType?: string
	WarmCount?: int
	WarmEnabled?: bool
	WarmType?: string
	ZoneAwarenessConfig?: #ZoneAwarenessConfig
	ZoneAwarenessEnabled?: bool
}

#EncryptionAtRestOptions: {
	Enabled?: bool
	KmsKeyId?: string
}

#LogPublishingOption: {
	CloudWatchLogsLogGroupArn?: string
	Enabled?: bool
}

#MasterUserOptions: {
	MasterUserARN?: string
	MasterUserName?: string
	MasterUserPassword?: string
}

#NodeToNodeEncryptionOptions: {
	Enabled?: bool
}

#SnapshotOptions: {
	AutomatedSnapshotStartHour?: int
}

#Tag: {
	Key: string
	Value: string
}

#VPCOptions: {
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}

#ZoneAwarenessConfig: {
	AvailabilityZoneCount?: int
}
