package domain

import "strings"

#Properties: {
	AIMLOptions?: #AIMLOptions
	AccessPolicies?: {...}
	AdvancedOptions?: {...}
	AutomatedSnapshotPauseOptions?: #AutomatedSnapshotPauseOptions
	ClusterConfig?: #ClusterConfig
	CognitoOptions?: #CognitoOptions
	DeploymentStrategyOptions?: #DeploymentStrategyOptions
	DomainEndpointOptions?: #DomainEndpointOptions
	DomainName?: string
	EBSOptions?: #EBSOptions
	EncryptionAtRestOptions?: #EncryptionAtRestOptions
	// The engine mode of the domain. Determines whether the domain runs the standard (GENERAL) engine or the optimized multi-engine (OPTIMIZED) engine. This value cannot be changed after the domain is created.
	EngineMode?: "GENERAL" | "OPTIMIZED"
	EngineVersion?: string
	IPAddressType?: string
	LogPublishingOptions?: {...}
	NodeToNodeEncryptionOptions?: #NodeToNodeEncryptionOptions
	OffPeakWindowOptions?: #OffPeakWindowOptions
	SkipShardMigrationWait?: bool
	SnapshotOptions?: #SnapshotOptions
	SoftwareUpdateOptions?: #SoftwareUpdateOptions
	// An arbitrary set of tags (key-value pairs) for this Domain.
	Tags?: [...#Tag]
	// The primary use case of the domain. Determines the default configuration tuned for the workload. For GENERAL engine-mode domains, this value can be changed after creation. For OPTIMIZED engine-mode domains, this value cannot be changed after creation.
	UseCase?: "SEARCH" | "VECTOR" | "OBSERVABILITY" | "MIXED"
	VPCOptions?: #VPCOptions
}

#AIMLOptions: {
	S3VectorsEngine?: #S3VectorsEngine
	ServerlessVectorAcceleration?: #ServerlessVectorAcceleration
}

#AdvancedSecurityOptionsInput: {
	AnonymousAuthDisableDate?: string
	AnonymousAuthEnabled?: bool
	Enabled?: bool
	IAMFederationOptions?: #IAMFederationOptions
	InternalUserDatabaseEnabled?: bool
	JWTOptions?: #JWTOptions
	MasterUserOptions?: #MasterUserOptions
	SAMLOptions?: #SAMLOptions
}

#AutomatedSnapshotPauseOptions: {
	Enabled: bool
	EndTime?: string
	StartTime?: string
}

#ClusterConfig: {
	ColdStorageOptions?: #ColdStorageOptions
	DedicatedMasterCount?: int
	DedicatedMasterEnabled?: bool
	DedicatedMasterType?: string
	InstanceCount?: int
	InstanceType?: string
	MultiAZWithStandbyEnabled?: bool
	NodeOptions?: [...#NodeOption]
	WarmCount?: int
	WarmEnabled?: bool
	WarmType?: string
	ZoneAwarenessConfig?: #ZoneAwarenessConfig
	ZoneAwarenessEnabled?: bool
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

#DeploymentStrategyOptions: {
	DeploymentStrategy?: "Default" | "CapacityOptimized"
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
	Throughput?: int
	VolumeSize?: int
	VolumeType?: string
}

#EncryptionAtRestOptions: {
	Enabled?: bool
	KmsKeyId?: string
}

#IAMFederationOptions: {
	Enabled?: bool
	RolesKey?: string
	SubjectKey?: string
}

#IdentityCenterOptions: {
	// Whether Identity Center is enabled.
	EnabledAPIAccess?: bool
	// The ARN of the Identity Center application.
	IdentityCenterApplicationARN?: string
	// The ARN of the Identity Center instance.
	IdentityCenterInstanceARN?: string
	// The IdentityStoreId for Identity Center options.
	IdentityStoreId?: string
	// The roles key for Identity Center options.
	RolesKey?: #RolesKeyIdcType
	// The subject key for Identity Center options.
	SubjectKey?: #SubjectKeyIdcType
}

#Idp: {
	EntityId: string
	MetadataContent: string & strings.MinRunes(1) & strings.MaxRunes(1048576)
}

#JWTOptions: {
	Enabled?: bool
	PublicKey?: string
	RolesKey?: string
	SubjectKey?: string
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

#NodeConfig: {
	Count?: int
	Enabled?: bool
	Type?: string
}

#NodeOption: {
	NodeConfig?: #NodeConfig
	NodeType?: "coordinator"
}

#NodeToNodeEncryptionOptions: {
	Enabled?: bool
}

#OffPeakWindow: {
	WindowStartTime?: #WindowStartTime
}

#OffPeakWindowOptions: {
	Enabled?: bool
	OffPeakWindow?: #OffPeakWindow
}

#RolesKeyIdcType: "GroupName" | "GroupId"

#S3VectorsEngine: {
	// Whether to enable S3 vectors engine.
	Enabled: bool
}

#SAMLOptions: {
	Enabled?: bool
	Idp?: #Idp
	MasterBackendRole?: string
	MasterUserName?: string
	RolesKey?: string
	SessionTimeoutMinutes?: int
	SubjectKey?: string
}

#ServerlessVectorAcceleration: {
	// Whether to enable serverless vector acceleration.
	Enabled?: bool
}

#ServiceSoftwareOptions: {
	AutomatedUpdateDate?: string
	Cancellable?: bool
	CurrentVersion?: string
	Description?: string
	NewVersion?: string
	OptionalDeployment?: bool
	UpdateAvailable?: bool
	UpdateStatus?: string
}

#SnapshotOptions: {
	AutomatedSnapshotStartHour?: int
}

#SoftwareUpdateOptions: {
	AutoSoftwareUpdateEnabled?: bool
}

#SubjectKeyIdcType: "UserName" | "UserId" | "Email"

#Tag: {
	// The value of the tag.
	Key: string & strings.MinRunes(0) & strings.MaxRunes(128)
	// The key of the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VPCOptions: {
	// Controls whether egress traffic from the domain is routed through the customer VPC.
	EgressEnabled?: bool
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}

#WindowStartTime: {
	Hours: int & >=0 & <=23
	Minutes: int & >=0 & <=59
}

#ZoneAwarenessConfig: {
	AvailabilityZoneCount?: int
}
