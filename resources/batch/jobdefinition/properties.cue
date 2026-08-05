package jobdefinition

import "strings"

#Properties: {
	ConsumableResourceProperties?: #ConsumableResourceProperties
	ContainerProperties?: #ContainerProperties
	EcsProperties?: #EcsProperties
	EksProperties?: #EksProperties
	JobDefinitionName?: string & strings.MaxRunes(128)
	NodeProperties?: #NodeProperties
	Parameters?: {...}
	PlatformCapabilities?: [...string]
	PropagateTags?: bool
	ResourceRetentionPolicy?: #ResourceRetentionPolicy
	RetryStrategy?: #RetryStrategy
	SchedulingPriority?: int
	// A key-value pair to associate with a resource.
	Tags?: {...}
	Timeout?: #JobTimeout
	Type: string
}

#ConsumableResourceProperties: {
	ConsumableResourceList: [...#ConsumableResourceRequirement]
}

#ConsumableResourceRequirement: {
	// The ARN of the consumable resource the job definition should consume.
	ConsumableResource: string & =~"arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}"
	Quantity: int
}

#ContainerProperties: {
	Command?: [...string]
	EnableExecuteCommand?: bool
	Environment?: [...#Environment]
	EphemeralStorage?: #EphemeralStorage
	ExecutionRoleArn?: string
	FargatePlatformConfiguration?: {
		PlatformVersion?: string
	}
	Image: string
	JobRoleArn?: string
	LinuxParameters?: #LinuxParameters
	LogConfiguration?: #LogConfiguration
	Memory?: int
	MountPoints?: [...#MountPoint]
	NetworkConfiguration?: #NetworkConfiguration
	Privileged?: bool
	ReadonlyRootFilesystem?: bool
	RepositoryCredentials?: #RepositoryCredentials
	ResourceRequirements?: [...#ResourceRequirement]
	RuntimePlatform?: #RuntimePlatform
	Secrets?: [...#Secret]
	Ulimits?: [...#Ulimit]
	User?: string
	Vcpus?: int
	Volumes?: [...#Volume]
}

#Device: {
	ContainerPath?: string
	HostPath?: string
	Permissions?: [...string]
}

#EFSAuthorizationConfig: {
	AccessPointId?: string
	Iam?: string
}

#EFSVolumeConfiguration: {
	AuthorizationConfig?: #EFSAuthorizationConfig
	FileSystemId: string
	RootDirectory?: string
	TransitEncryption?: string
	TransitEncryptionPort?: int
}

#EcsProperties: {
	TaskProperties: [...#EcsTaskProperties]
}

#EcsTaskProperties: {
	Containers?: [...#TaskContainerProperties]
	EnableExecuteCommand?: bool
	EphemeralStorage?: #EphemeralStorage
	ExecutionRoleArn?: string
	IpcMode?: string
	NetworkConfiguration?: #NetworkConfiguration
	PidMode?: string
	PlatformVersion?: string
	RuntimePlatform?: #RuntimePlatform
	TaskRoleArn?: string
	Volumes?: [...#Volume]
}

#EksContainer: {
	Args?: [...string]
	Command?: [...string]
	Env?: [...#EksContainerEnvironmentVariable]
	Image: string
	ImagePullPolicy?: string
	Name?: string
	Resources?: #EksContainerResourceRequirements
	SecurityContext?: #EksContainerSecurityContext
	VolumeMounts?: [...#EksContainerVolumeMount]
}

#EksContainerEnvironmentVariable: {
	Name: string
	Value?: string
}

#EksContainerResourceRequirements: {
	Limits?: {...}
	Requests?: {...}
}

#EksContainerSecurityContext: {
	AllowPrivilegeEscalation?: bool
	Privileged?: bool
	ReadOnlyRootFilesystem?: bool
	RunAsGroup?: int
	RunAsNonRoot?: bool
	RunAsUser?: int
}

#EksContainerVolumeMount: {
	MountPath?: string
	Name?: string
	ReadOnly?: bool
	SubPath?: string
}

#EksEmptyDir: {
	Medium?: string
	SizeLimit?: string
}

#EksHostPath: {
	Path?: string
}

#EksMetadata: {
	Annotations?: {...}
	Labels?: {...}
	Namespace?: string
}

#EksPersistentVolumeClaim: {
	ClaimName: string
	ReadOnly?: bool
}

#EksPodProperties: {
	Containers?: [...#EksContainer]
	DnsPolicy?: string
	HostNetwork?: bool
	ImagePullSecrets?: [...#ImagePullSecret]
	InitContainers?: [...#EksContainer]
	Metadata?: #EksMetadata
	ServiceAccountName?: string
	ShareProcessNamespace?: bool
	Volumes?: [...#EksVolume]
}

#EksProperties: {
	PodProperties?: #EksPodProperties
}

#EksSecret: {
	Optional?: bool
	SecretName: string
}

#EksVolume: {
	EmptyDir?: #EksEmptyDir
	HostPath?: #EksHostPath
	Name: string
	PersistentVolumeClaim?: #EksPersistentVolumeClaim
	Secret?: #EksSecret
}

#Environment: {
	Name?: string
	Value?: string
}

#EphemeralStorage: {
	SizeInGiB: int
}

#EvaluateOnExit: {
	Action: string
	OnExitCode?: string
	OnReason?: string
	OnStatusReason?: string
}

#Host: {
	SourcePath?: string
}

#ImagePullSecret: {
	Name?: string
}

#JobTimeout: {
	AttemptDurationSeconds?: int
}

#LinuxParameters: {
	Devices?: [...#Device]
	InitProcessEnabled?: bool
	MaxSwap?: int
	SharedMemorySize?: int
	Swappiness?: int
	Tmpfs?: [...#Tmpfs]
}

#LogConfiguration: {
	LogDriver: string
	Options?: {...}
	SecretOptions?: [...#Secret]
}

#MountPoint: {
	ContainerPath?: string
	ReadOnly?: bool
	SourceVolume?: string
}

#MultiNodeContainerProperties: {
	Command?: [...string]
	EnableExecuteCommand?: bool
	Environment?: [...#Environment]
	EphemeralStorage?: #EphemeralStorage
	ExecutionRoleArn?: string
	Image: string
	InstanceType?: string
	JobRoleArn?: string
	LinuxParameters?: #LinuxParameters
	LogConfiguration?: #LogConfiguration
	Memory?: int
	MountPoints?: [...#MountPoint]
	Privileged?: bool
	ReadonlyRootFilesystem?: bool
	RepositoryCredentials?: #RepositoryCredentials
	ResourceRequirements?: [...#ResourceRequirement]
	RuntimePlatform?: #RuntimePlatform
	Secrets?: [...#Secret]
	Ulimits?: [...#Ulimit]
	User?: string
	Vcpus?: int
	Volumes?: [...#Volume]
}

#MultiNodeEcsProperties: {
	TaskProperties: [...#MultiNodeEcsTaskProperties]
}

#MultiNodeEcsTaskProperties: {
	Containers?: [...#TaskContainerProperties]
	EnableExecuteCommand?: bool
	ExecutionRoleArn?: string
	IpcMode?: string
	PidMode?: string
	TaskRoleArn?: string
	Volumes?: [...#Volume]
}

#NetworkConfiguration: {
	AssignPublicIp?: string
}

#NodeProperties: {
	MainNode: int
	NodeRangeProperties: [...#NodeRangeProperty]
	NumNodes: int
}

#NodeRangeProperty: {
	ConsumableResourceProperties?: #ConsumableResourceProperties
	Container?: #MultiNodeContainerProperties
	EcsProperties?: #MultiNodeEcsProperties
	EksProperties?: #EksProperties
	InstanceTypes?: [...string]
	TargetNodes: string
}

#RepositoryCredentials: {
	CredentialsParameter: string
}

#ResourceRequirement: {
	Type?: string
	Value?: string
}

#ResourceRetentionPolicy: {
	SkipDeregisterOnUpdate?: bool
}

#RetryStrategy: {
	Attempts?: int
	EvaluateOnExit?: [...#EvaluateOnExit]
}

#RuntimePlatform: {
	CpuArchitecture?: string
	OperatingSystemFamily?: string
}

#S3FilesVolumeConfiguration: {
	AccessPointArn?: string
	FileSystemArn: string
	RootDirectory?: string
	TransitEncryptionPort?: int
}

#Secret: {
	Name: string
	ValueFrom: string
}

#TaskContainerDependency: {
	Condition: string
	ContainerName: string
}

#TaskContainerProperties: {
	Command?: [...string]
	DependsOn?: [...#TaskContainerDependency]
	Environment?: [...#Environment]
	Essential?: bool
	FirelensConfiguration?: {
		Options?: {...}
		Type: string
	}
	Image: string
	LinuxParameters?: #LinuxParameters
	LogConfiguration?: #LogConfiguration
	MountPoints?: [...#MountPoint]
	Name?: string
	Privileged?: bool
	ReadonlyRootFilesystem?: bool
	RepositoryCredentials?: #RepositoryCredentials
	ResourceRequirements?: [...#ResourceRequirement]
	Secrets?: [...#Secret]
	StartTimeout?: int
	StopTimeout?: int
	Ulimits?: [...#Ulimit]
	User?: string
}

#Tmpfs: {
	ContainerPath: string
	MountOptions?: [...string]
	Size: int
}

#Ulimit: {
	HardLimit: int
	Name: string
	SoftLimit: int
}

#Volume: {
	EfsVolumeConfiguration?: #EFSVolumeConfiguration
	Host?: #Host
	Name?: string
	S3FilesVolumeConfiguration?: #S3FilesVolumeConfiguration
}
