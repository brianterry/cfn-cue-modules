package project

#Properties: {
	Artifacts: #Artifacts
	AutoRetryLimit?: int
	BadgeEnabled?: bool
	BuildBatchConfig?: #ProjectBuildBatchConfig
	Cache?: #ProjectCache
	ConcurrentBuildLimit?: int
	Description?: string
	EncryptionKey?: string
	Environment: #Environment
	FileSystemLocations?: [...#ProjectFileSystemLocation]
	LogsConfig?: #LogsConfig
	Name?: string
	QueuedTimeoutInMinutes?: int
	ResourceAccessRole?: string
	SecondaryArtifacts?: [...#Artifacts]
	SecondarySourceVersions?: [...#ProjectSourceVersion]
	SecondarySources?: [...#Source]
	ServiceRole: string
	Source: #Source
	SourceVersion?: string
	Tags?: [...#Tag]
	TimeoutInMinutes?: int
	Triggers?: #ProjectTriggers
	Visibility?: string
	VpcConfig?: #VpcConfig
}

#Artifacts: {
	ArtifactIdentifier?: string
	EncryptionDisabled?: bool
	Location?: string
	Name?: string
	NamespaceType?: string
	OverrideArtifactName?: bool
	Packaging?: string
	Path?: string
	Type: string
}

#BatchRestrictions: {
	ComputeTypesAllowed?: [...string]
	MaximumBuildsAllowed?: int
}

#BuildStatusConfig: {
	Context?: string
	TargetUrl?: string
}

#CloudWatchLogsConfig: {
	GroupName?: string
	Status: string
	StreamName?: string
}

#DockerServer: {
	ComputeType: string
	SecurityGroupIds?: [...string]
}

#Environment: {
	Certificate?: string
	ComputeType: string
	DockerServer?: #DockerServer
	EnvironmentVariables?: [...#EnvironmentVariable]
	Fleet?: #ProjectFleet
	HostKernel?: string
	Image: string
	ImagePullCredentialsType?: string
	PrivilegedMode?: bool
	RegistryCredential?: #RegistryCredential
	Type: string
}

#EnvironmentVariable: {
	Name: string
	Type?: string
	Value: string
}

#FilterGroup: {...}

#GitSubmodulesConfig: {
	FetchSubmodules: bool
}

#LogsConfig: {
	CloudWatchLogs?: #CloudWatchLogsConfig
	S3Logs?: #S3LogsConfig
}

#ProjectBuildBatchConfig: {
	BatchReportMode?: string
	CombineArtifacts?: bool
	Restrictions?: #BatchRestrictions
	ServiceRole?: string
	TimeoutInMins?: int
}

#ProjectCache: {
	CacheNamespace?: string
	Location?: string
	Modes?: [...string]
	Type: string
}

#ProjectFileSystemLocation: {
	Identifier: string
	Location: string
	MountOptions?: string
	MountPoint: string
	Type: string
}

#ProjectFleet: {
	FleetArn?: string
}

#ProjectSourceVersion: {
	SourceIdentifier: string
	SourceVersion?: string
}

#ProjectTriggers: {
	BuildType?: string
	FilterGroups?: [...#FilterGroup]
	PullRequestBuildPolicy?: #PullRequestBuildPolicy
	ScopeConfiguration?: #ScopeConfiguration
	Webhook?: bool
}

#PullRequestBuildPolicy: {
	ApproverRoles?: [...string]
	RequiresCommentApproval: string
}

#RegistryCredential: {
	Credential: string
	CredentialProvider: string
}

#S3LogsConfig: {
	EncryptionDisabled?: bool
	Location?: string
	Status: string
}

#ScopeConfiguration: {
	Domain?: string
	Name: string
	Scope?: string
}

#Source: {
	Auth?: #SourceAuth
	BuildSpec?: string
	BuildStatusConfig?: #BuildStatusConfig
	GitCloneDepth?: int
	GitSubmodulesConfig?: #GitSubmodulesConfig
	InsecureSsl?: bool
	Location?: string
	ReportBuildStatus?: bool
	SourceIdentifier?: string
	Type: string
}

#SourceAuth: {
	Resource?: string
	Type: string
}

#Tag: {
	Key: string
	Value: string
}

#VpcConfig: {
	SecurityGroupIds?: [...string]
	Subnets?: [...string]
	VpcId?: string
}
