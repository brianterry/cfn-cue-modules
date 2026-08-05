package domain

import "strings"

#Properties: {
	// Specifies the VPC used for non-EFS traffic. The default value is PublicInternetOnly.
	AppNetworkAccessType?: "PublicInternetOnly" | "VpcOnly"
	// The entity that creates and manages the required security groups for inter-app communication in VPCOnly mode. Required when CreateDomain.AppNetworkAccessType is VPCOnly and DomainSettings.RStudioServerProDomainSettings.DomainExecutionRoleArn is provided.
	AppSecurityGroupManagement?: "Service" | "Customer"
	// The mode of authentication that members use to access the domain.
	AuthMode: "SSO" | "IAM"
	// The default space settings.
	DefaultSpaceSettings?: #DefaultSpaceSettings
	// The default user settings.
	DefaultUserSettings: #UserSettings
	// A name for the domain.
	DomainName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}" & strings.MaxRunes(63)
	DomainSettings?: #DomainSettings
	// Indicates whether a home EFS file system is created for the domain. Set to Disabled to skip EFS creation and reduce domain creation time.
	HomeEfsFileSystemCreation?: "Enabled" | "Disabled"
	// SageMaker uses AWS KMS to encrypt the EFS volume attached to the domain with an AWS managed customer master key (CMK) by default.
	KmsKeyId?: string & =~".*" & strings.MaxRunes(2048)
	// The VPC subnets that Studio uses for communication.
	SubnetIds?: [...string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)]
	// Indicates whether the tags added to Domain, User Profile and Space entity is propagated to all SageMaker resources.
	TagPropagation?: "ENABLED" | "DISABLED"
	// A list of tags to apply to the user profile.
	Tags?: [...#Tag]
	// The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
	VpcId?: string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)
}

#AppInstanceType: "system" | "ml.t3.micro" | "ml.t3.small" | "ml.t3.medium" | "ml.t3.large" | "ml.t3.xlarge" | "ml.t3.2xlarge" | "ml.m5.large" | "ml.m5.xlarge" | "ml.m5.2xlarge" | "ml.m5.4xlarge" | "ml.m5.8xlarge" | "ml.m5.12xlarge" | "ml.m5.16xlarge" | "ml.m5.24xlarge" | "ml.m5d.large" | "ml.m5d.xlarge" | "ml.m5d.2xlarge" | "ml.m5d.4xlarge" | "ml.m5d.8xlarge" | "ml.m5d.12xlarge" | "ml.m5d.16xlarge" | "ml.m5d.24xlarge" | "ml.c5.large" | "ml.c5.xlarge" | "ml.c5.2xlarge" | "ml.c5.4xlarge" | "ml.c5.9xlarge" | "ml.c5.12xlarge" | "ml.c5.18xlarge" | "ml.c5.24xlarge" | "ml.p3.2xlarge" | "ml.p3.8xlarge" | "ml.p3.16xlarge" | "ml.p3dn.24xlarge" | "ml.g4dn.xlarge" | "ml.g4dn.2xlarge" | "ml.g4dn.4xlarge" | "ml.g4dn.8xlarge" | "ml.g4dn.12xlarge" | "ml.g4dn.16xlarge" | "ml.r5.large" | "ml.r5.xlarge" | "ml.r5.2xlarge" | "ml.r5.4xlarge" | "ml.r5.8xlarge" | "ml.r5.12xlarge" | "ml.r5.16xlarge" | "ml.r5.24xlarge" | "ml.g5.xlarge" | "ml.g5.2xlarge" | "ml.g5.4xlarge" | "ml.g5.8xlarge" | "ml.g5.12xlarge" | "ml.g5.16xlarge" | "ml.g5.24xlarge" | "ml.g5.48xlarge" | "ml.g6.xlarge" | "ml.g6.2xlarge" | "ml.g6.4xlarge" | "ml.g6.8xlarge" | "ml.g6.12xlarge" | "ml.g6.16xlarge" | "ml.g6.24xlarge" | "ml.g6.48xlarge" | "ml.g6e.xlarge" | "ml.g6e.2xlarge" | "ml.g6e.4xlarge" | "ml.g6e.8xlarge" | "ml.g6e.12xlarge" | "ml.g6e.16xlarge" | "ml.g6e.24xlarge" | "ml.g6e.48xlarge" | "ml.geospatial.interactive" | "ml.p4d.24xlarge" | "ml.p4de.24xlarge" | "ml.trn1.2xlarge" | "ml.trn1.32xlarge" | "ml.trn1n.32xlarge" | "ml.p5.48xlarge" | "ml.p5e.48xlarge" | "ml.p5en.48xlarge" | "ml.m6i.large" | "ml.m6i.xlarge" | "ml.m6i.2xlarge" | "ml.m6i.4xlarge" | "ml.m6i.8xlarge" | "ml.m6i.12xlarge" | "ml.m6i.16xlarge" | "ml.m6i.24xlarge" | "ml.m6i.32xlarge" | "ml.m7i.large" | "ml.m7i.xlarge" | "ml.m7i.2xlarge" | "ml.m7i.4xlarge" | "ml.m7i.8xlarge" | "ml.m7i.12xlarge" | "ml.m7i.16xlarge" | "ml.m7i.24xlarge" | "ml.m7i.48xlarge" | "ml.c6i.large" | "ml.c6i.xlarge" | "ml.c6i.2xlarge" | "ml.c6i.4xlarge" | "ml.c6i.8xlarge" | "ml.c6i.12xlarge" | "ml.c6i.16xlarge" | "ml.c6i.24xlarge" | "ml.c6i.32xlarge" | "ml.c7i.large" | "ml.c7i.xlarge" | "ml.c7i.2xlarge" | "ml.c7i.4xlarge" | "ml.c7i.8xlarge" | "ml.c7i.12xlarge" | "ml.c7i.16xlarge" | "ml.c7i.24xlarge" | "ml.c7i.48xlarge" | "ml.r6i.large" | "ml.r6i.xlarge" | "ml.r6i.2xlarge" | "ml.r6i.4xlarge" | "ml.r6i.8xlarge" | "ml.r6i.12xlarge" | "ml.r6i.16xlarge" | "ml.r6i.24xlarge" | "ml.r6i.32xlarge" | "ml.r7i.large" | "ml.r7i.xlarge" | "ml.r7i.2xlarge" | "ml.r7i.4xlarge" | "ml.r7i.8xlarge" | "ml.r7i.12xlarge" | "ml.r7i.16xlarge" | "ml.r7i.24xlarge" | "ml.r7i.48xlarge" | "ml.m6id.large" | "ml.m6id.xlarge" | "ml.m6id.2xlarge" | "ml.m6id.4xlarge" | "ml.m6id.8xlarge" | "ml.m6id.12xlarge" | "ml.m6id.16xlarge" | "ml.m6id.24xlarge" | "ml.m6id.32xlarge" | "ml.c6id.large" | "ml.c6id.xlarge" | "ml.c6id.2xlarge" | "ml.c6id.4xlarge" | "ml.c6id.8xlarge" | "ml.c6id.12xlarge" | "ml.c6id.16xlarge" | "ml.c6id.24xlarge" | "ml.c6id.32xlarge" | "ml.r6id.large" | "ml.r6id.xlarge" | "ml.r6id.2xlarge" | "ml.r6id.4xlarge" | "ml.r6id.8xlarge" | "ml.r6id.12xlarge" | "ml.r6id.16xlarge" | "ml.r6id.24xlarge" | "ml.r6id.32xlarge" | "ml.p5.4xlarge" | "ml.p6-b200.48xlarge" | "ml.g7e.2xlarge" | "ml.g7e.4xlarge" | "ml.g7e.8xlarge" | "ml.g7e.12xlarge" | "ml.g7e.24xlarge" | "ml.g7e.48xlarge"

#AppLifecycleManagement: {
	IdleSettings?: #IdleSettings
}

#AppType: "JupyterServer" | "TensorBoard" | "RStudioServerPro" | "JupyterLab" | "CodeEditor" | "DetailedProfiler" | "Canvas"

#CodeEditorAppSettings: {
	AppLifecycleManagement?: #AppLifecycleManagement
	// The lifecycle configuration that runs before the default lifecycle configuration.
	BuiltInLifecycleConfigArn?: string & =~"^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:studio-lifecycle-config/.*|None)$" & strings.MaxRunes(256)
	// A list of custom images for use for CodeEditor apps.
	CustomImages?: [...#CustomImage]
	// The default instance type and the Amazon Resource Name (ARN) of the default SageMaker image used by the CodeEditor app.
	DefaultResourceSpec?: #ResourceSpec
	// A list of LifecycleConfigArns available for use with CodeEditor apps.
	LifecycleConfigArns?: [...#StudioLifecycleConfigArn]
}

#CodeRepository: {
	// A CodeRepository (valid URL) to be used within Jupyter's Git extension.
	RepositoryUrl: string & =~"^https://([.\\-_a-zA-Z0-9]+/?){3,1016}$" & strings.MaxRunes(256)
}

#CustomFileSystemConfig: {
	EFSFileSystemConfig?: #EFSFileSystemConfig
	FSxLustreFileSystemConfig?: #FSxLustreFileSystemConfig
	S3FileSystemConfig?: #S3FileSystemConfig
}

#CustomImage: {
	// The Name of the AppImageConfig.
	AppImageConfigName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}" & strings.MaxRunes(63)
	// The name of the CustomImage. Must be unique to your account.
	ImageName: string & =~"^[a-zA-Z0-9]([-.]?[a-zA-Z0-9]){0,62}$" & strings.MaxRunes(63)
	// The version number of the CustomImage.
	ImageVersionNumber?: int & >=0
}

#CustomPosixUserConfig: {
	Gid: int & >=1001 & <=4000000
	Uid: int & >=10000 & <=4000000
}

#DefaultEbsStorageSettings: {
	// Default size of the Amazon EBS volume in Gb
	DefaultEbsVolumeSizeInGb: #SpaceEbsVolumeSizeInGb
	// Maximum size of the Amazon EBS volume in Gb. Must be greater than or equal to the DefaultEbsVolumeSizeInGb.
	MaximumEbsVolumeSizeInGb: #SpaceEbsVolumeSizeInGb
}

#DefaultSpaceSettings: {
	CustomFileSystemConfigs?: [...#CustomFileSystemConfig]
	// The Jupyter lab's custom posix user configurations.
	CustomPosixUserConfig?: #CustomPosixUserConfig
	// The execution role for the space.
	ExecutionRole: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The Jupyter lab's app settings.
	JupyterLabAppSettings?: #JupyterLabAppSettings
	// The Jupyter server's app settings.
	JupyterServerAppSettings?: #JupyterServerAppSettings
	// The kernel gateway app settings.
	KernelGatewayAppSettings?: #KernelGatewayAppSettings
	// The security groups for the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
	SecurityGroups?: [...string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)]
	// The Jupyter lab's space storage settings.
	SpaceStorageSettings?: #DefaultSpaceStorageSettings
}

#DefaultSpaceStorageSettings: {
	DefaultEbsStorageSettings?: #DefaultEbsStorageSettings
}

#DockerSettings: {
	// The flag to enable/disable docker-proxy server
	EnableDockerAccess?: "ENABLED" | "DISABLED"
	// A list of account id's that would be used to pull images from in VpcOnly mode
	VpcOnlyTrustedAccounts?: [...string & =~"^\\d+$" & strings.MinRunes(12) & strings.MaxRunes(12)]
}

#DomainSettings: {
	DockerSettings?: #DockerSettings
	// The configuration for attaching a SageMaker user profile name to the execution role as a sts:SourceIdentity key.
	ExecutionRoleIdentityConfig?: "USER_PROFILE_NAME" | "DISABLED"
	IpAddressType?: #IpAddressType
	RStudioServerProDomainSettings?: #RStudioServerProDomainSettings
	// The security groups for the Amazon Virtual Private Cloud that the Domain uses for communication between Domain-level apps and user apps.
	SecurityGroupIds?: [...string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)]
	UnifiedStudioSettings?: #UnifiedStudioSettings
}

#EFSFileSystemConfig: {
	FileSystemId: string & =~"^(fs-[0-9a-f]{8,})$" & strings.MinRunes(11) & strings.MaxRunes(21)
	FileSystemPath?: string & =~"^\\/\\S*$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#FSxLustreFileSystemConfig: {
	FileSystemId: string & =~"^(fs-[0-9a-f]{8,})$" & strings.MinRunes(11) & strings.MaxRunes(21)
	FileSystemPath?: string & =~"^\\/\\S*$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#HiddenSageMakerImage: {
	// The SageMaker image name that you are hiding from the Studio user interface.
	SageMakerImageName?: "sagemaker_distribution"
	VersionAliases?: [...string & =~"^(0|[1-9]\\d*)\\.(0|[1-9]\\d*)$" & strings.MinRunes(1) & strings.MaxRunes(128)]
}

#IdleSettings: {
	IdleTimeoutInMinutes?: #IdleTimeoutInMinutes
	LifecycleManagement?: #LifecycleManagement
	MaxIdleTimeoutInMinutes?: #MaxIdleTimeoutInMinutes
	MinIdleTimeoutInMinutes?: #MinIdleTimeoutInMinutes
}

#IdleTimeoutInMinutes: int & >=60 & <=525600

#IpAddressType: "IPV4" | "DUALSTACK"

#JupyterLabAppSettings: {
	AppLifecycleManagement?: #AppLifecycleManagement
	// The lifecycle configuration that runs before the default lifecycle configuration.
	BuiltInLifecycleConfigArn?: string & =~"^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:studio-lifecycle-config/.*|None)$" & strings.MaxRunes(256)
	// A list of CodeRepositories available for use with JupyterLab apps.
	CodeRepositories?: [...#CodeRepository]
	// A list of custom images for use for JupyterLab apps.
	CustomImages?: [...#CustomImage]
	// The default instance type and the Amazon Resource Name (ARN) of the default SageMaker image used by the JupyterLab app.
	DefaultResourceSpec?: #ResourceSpec
	// A list of LifecycleConfigArns available for use with JupyterLab apps.
	LifecycleConfigArns?: [...#StudioLifecycleConfigArn]
}

#JupyterServerAppSettings: {
	DefaultResourceSpec?: #ResourceSpec
	// A list of LifecycleConfigArns available for use with JupyterServer apps.
	LifecycleConfigArns?: [...#StudioLifecycleConfigArn]
}

#KernelGatewayAppSettings: {
	// A list of custom SageMaker images that are configured to run as a KernelGateway app.
	CustomImages?: [...#CustomImage]
	// The default instance type and the Amazon Resource Name (ARN) of the default SageMaker image used by the KernelGateway app.
	DefaultResourceSpec?: #ResourceSpec
	// A list of LifecycleConfigArns available for use with KernelGateway apps.
	LifecycleConfigArns?: [...#StudioLifecycleConfigArn]
}

#LifecycleManagement: "ENABLED" | "DISABLED"

#MaxIdleTimeoutInMinutes: int & >=60 & <=525600

#MinIdleTimeoutInMinutes: int & >=60 & <=525600

#MlTools: "DataWrangler" | "FeatureStore" | "EmrClusters" | "AutoMl" | "Experiments" | "Training" | "ModelEvaluation" | "Pipelines" | "Models" | "JumpStart" | "InferenceRecommender" | "Endpoints" | "Projects" | "InferenceOptimization" | "HyperPodClusters" | "Comet" | "DeepchecksLLMEvaluation" | "Fiddler" | "LakeraGuard" | "PerformanceEvaluation"

#RSessionAppSettings: {
	// A list of custom SageMaker images that are configured to run as a KernelGateway app.
	CustomImages?: [...#CustomImage]
	DefaultResourceSpec?: #ResourceSpec
}

#RStudioServerProAppSettings: {
	// Indicates whether the current user has access to the RStudioServerPro app.
	AccessStatus?: "ENABLED" | "DISABLED"
	// The level of permissions that the user has within the RStudioServerPro app. This value defaults to User. The Admin value allows the user access to the RStudio Administrative Dashboard.
	UserGroup?: "R_STUDIO_ADMIN" | "R_STUDIO_USER"
}

#RStudioServerProDomainSettings: {
	DefaultResourceSpec?: #ResourceSpec
	// The ARN of the execution role for the RStudioServerPro Domain-level app.
	DomainExecutionRoleArn: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// A URL pointing to an RStudio Connect server.
	RStudioConnectUrl?: string & =~"^(https:|http:|www\\.)\\S*"
	// A URL pointing to an RStudio Package Manager server.
	RStudioPackageManagerUrl?: string & =~"^(https:|http:|www\\.)\\S*"
}

#ResourceSpec: {
	InstanceType?: #AppInstanceType
	// The Amazon Resource Name (ARN) of the Lifecycle Configuration to attach to the Resource.
	LifecycleConfigArn?: string & =~"^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:studio-lifecycle-config/.*|None)$" & strings.MaxRunes(256)
	// The Amazon Resource Name (ARN) of the SageMaker image that the image version belongs to.
	SageMakerImageArn?: string & =~"^arn:aws(-[\\w]+)*:sagemaker:.+:[0-9]{12}:image/[a-z0-9]([-.]?[a-z0-9])*$" & strings.MaxRunes(256)
	// The Amazon Resource Name (ARN) of the image version created on the instance.
	SageMakerImageVersionArn?: string & =~"^arn:aws(-[\\w]+)*:sagemaker:.+:[0-9]{12}:image-version/[a-z0-9]([-.]?[a-z0-9])*/[0-9]+$" & strings.MaxRunes(256)
	// The Amazon Resource Name (ARN) of the training plan to use for the ResourceSpec.
	TrainingPlanArn?: string & =~"^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:training-plan/.*|None)$" & strings.MinRunes(0) & strings.MaxRunes(2048)
}

#S3FileSystemConfig: {
	MountPath?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	S3Uri?: string & =~"(s3)://([^/]+)/?(.*)" & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#SharingSettings: {
	// Whether to include the notebook cell output when sharing the notebook. The default is Disabled.
	NotebookOutputOption?: "Allowed" | "Disabled"
	// When NotebookOutputOption is Allowed, the AWS Key Management Service (KMS) encryption key ID used to encrypt the notebook cell output in the Amazon S3 bucket.
	S3KmsKeyId?: string & =~".*" & strings.MaxRunes(2048)
	// When NotebookOutputOption is Allowed, the Amazon S3 bucket used to store the shared notebook snapshots.
	S3OutputPath?: string & =~"^(https|s3)://([^/]+)/?(.*)$" & strings.MaxRunes(1024)
}

#SpaceEbsVolumeSizeInGb: int & >=5 & <=16384

#StudioLifecycleConfigArn: string & =~"^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:studio-lifecycle-config/.*|None)$" & strings.MaxRunes(256)

#StudioWebPortalSettings: {
	// Applications supported in Studio that are hidden from the Studio left navigation pane.
	HiddenAppTypes?: [...#AppType]
	// The instance types you are hiding from the Studio user interface.
	HiddenInstanceTypes?: [...#AppInstanceType]
	// The machine learning tools that are hidden from the Studio left navigation pane.
	HiddenMlTools?: [...#MlTools]
	// The version aliases you are hiding from the Studio user interface.
	HiddenSageMakerImageVersionAliases?: [...#HiddenSageMakerImage]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#UnifiedStudioSettings: {
	// The ID of the AWS account that has the Amazon SageMaker Unified Studio domain. The default value, if you don't specify an ID, is the ID of the account that has the Amazon SageMaker AI domain.
	DomainAccountId?: string & =~"^\\d+$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// The ID of the Amazon SageMaker Unified Studio domain associated with this domain.
	DomainId?: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$" & strings.MinRunes(1) & strings.MaxRunes(36)
	// The AWS Region where the domain is located in Amazon SageMaker Unified Studio. The default value, if you don't specify a Region, is the Region where the Amazon SageMaker AI domain is located.
	DomainRegion?: string & =~"[a-zA-Z]{2}-[a-zA-Z\\-]+-\\d+"
	// The ID of the environment that Amazon SageMaker Unified Studio associates with the domain.
	EnvironmentId?: string & =~"^[a-zA-Z0-9_-]{1,36}$" & strings.MinRunes(1) & strings.MaxRunes(36)
	// The ID of the Amazon SageMaker Unified Studio project that corresponds to the domain.
	ProjectId?: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The location where Amazon S3 stores temporary execution data and other artifacts for the project that corresponds to the domain.
	ProjectS3Path?: string & =~"[\\w\\.-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// Sets whether you can access the domain in Amazon SageMaker Studio:
	// ENABLED
	// You can access the domain in Amazon SageMaker Studio. If you migrate the domain to Amazon SageMaker Unified Studio, you can access it in both studio interfaces.
	// DISABLED
	// You can't access the domain in Amazon SageMaker Studio. If you migrate the domain to Amazon SageMaker Unified Studio, you can access it only in that studio interface.
	StudioWebPortalAccess?: "ENABLED" | "DISABLED"
}

#UserSettings: {
	// Indicates whether auto-mounting of an EFS volume is supported for the user profile.
	AutoMountHomeEFS?: "Enabled" | "Disabled" | "DefaultAsDomain"
	CodeEditorAppSettings?: #CodeEditorAppSettings
	CustomFileSystemConfigs?: [...#CustomFileSystemConfig]
	CustomPosixUserConfig?: #CustomPosixUserConfig
	// Defines which Amazon SageMaker application users are directed to by default.
	DefaultLandingUri?: string & strings.MaxRunes(1023)
	// The execution role for the user.
	ExecutionRole: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	JupyterLabAppSettings?: #JupyterLabAppSettings
	// The Jupyter server's app settings.
	JupyterServerAppSettings?: #JupyterServerAppSettings
	// The kernel gateway app settings.
	KernelGatewayAppSettings?: #KernelGatewayAppSettings
	RSessionAppSettings?: #RSessionAppSettings
	RStudioServerProAppSettings?: #RStudioServerProAppSettings
	// The security groups for the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
	SecurityGroups?: [...string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)]
	// The sharing settings.
	SharingSettings?: #SharingSettings
	SpaceStorageSettings?: #DefaultSpaceStorageSettings
	// Indicates whether the Studio experience is available to users. If not, users cannot access Studio.
	StudioWebPortal?: "ENABLED" | "DISABLED"
	StudioWebPortalSettings?: #StudioWebPortalSettings
}
