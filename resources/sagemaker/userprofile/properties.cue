package userprofile

import "strings"

#Properties: {
	// The ID of the associated Domain.
	DomainId: string & strings.MinRunes(1) & strings.MaxRunes(63)
	// A specifier for the type of value specified in SingleSignOnUserValue. Currently, the only supported value is "UserName". If the Domain's AuthMode is SSO, this field is required. If the Domain's AuthMode is not SSO, this field cannot be specified.
	SingleSignOnUserIdentifier?: string & =~"UserName"
	// The username of the associated AWS Single Sign-On User for this UserProfile. If the Domain's AuthMode is SSO, this field is required, and must match a valid username of a user in your directory. If the Domain's AuthMode is not SSO, this field cannot be specified.
	SingleSignOnUserValue?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// A list of tags to apply to the user profile.
	Tags?: [...#Tag]
	// A name for the UserProfile.
	UserProfileName: string & strings.MinRunes(1) & strings.MaxRunes(63)
	// A collection of settings.
	UserSettings?: #UserSettings
}

#AppInstanceType: "system" | "ml.t3.micro" | "ml.t3.small" | "ml.t3.medium" | "ml.t3.large" | "ml.t3.xlarge" | "ml.t3.2xlarge" | "ml.m5.large" | "ml.m5.xlarge" | "ml.m5.2xlarge" | "ml.m5.4xlarge" | "ml.m5.8xlarge" | "ml.m5.12xlarge" | "ml.m5.16xlarge" | "ml.m5.24xlarge" | "ml.m5d.large" | "ml.m5d.xlarge" | "ml.m5d.2xlarge" | "ml.m5d.4xlarge" | "ml.m5d.8xlarge" | "ml.m5d.12xlarge" | "ml.m5d.16xlarge" | "ml.m5d.24xlarge" | "ml.c5.large" | "ml.c5.xlarge" | "ml.c5.2xlarge" | "ml.c5.4xlarge" | "ml.c5.9xlarge" | "ml.c5.12xlarge" | "ml.c5.18xlarge" | "ml.c5.24xlarge" | "ml.p3.2xlarge" | "ml.p3.8xlarge" | "ml.p3.16xlarge" | "ml.p3dn.24xlarge" | "ml.g4dn.xlarge" | "ml.g4dn.2xlarge" | "ml.g4dn.4xlarge" | "ml.g4dn.8xlarge" | "ml.g4dn.12xlarge" | "ml.g4dn.16xlarge" | "ml.r5.large" | "ml.r5.xlarge" | "ml.r5.2xlarge" | "ml.r5.4xlarge" | "ml.r5.8xlarge" | "ml.r5.12xlarge" | "ml.r5.16xlarge" | "ml.r5.24xlarge" | "ml.g5.xlarge" | "ml.g5.2xlarge" | "ml.g5.4xlarge" | "ml.g5.8xlarge" | "ml.g5.12xlarge" | "ml.g5.16xlarge" | "ml.g5.24xlarge" | "ml.g5.48xlarge" | "ml.g6.xlarge" | "ml.g6.2xlarge" | "ml.g6.4xlarge" | "ml.g6.8xlarge" | "ml.g6.12xlarge" | "ml.g6.16xlarge" | "ml.g6.24xlarge" | "ml.g6.48xlarge" | "ml.g6e.xlarge" | "ml.g6e.2xlarge" | "ml.g6e.4xlarge" | "ml.g6e.8xlarge" | "ml.g6e.12xlarge" | "ml.g6e.16xlarge" | "ml.g6e.24xlarge" | "ml.g6e.48xlarge" | "ml.geospatial.interactive" | "ml.p4d.24xlarge" | "ml.p4de.24xlarge" | "ml.trn1.2xlarge" | "ml.trn1.32xlarge" | "ml.trn1n.32xlarge" | "ml.p5.48xlarge" | "ml.p5e.48xlarge" | "ml.p5en.48xlarge" | "ml.m6i.large" | "ml.m6i.xlarge" | "ml.m6i.2xlarge" | "ml.m6i.4xlarge" | "ml.m6i.8xlarge" | "ml.m6i.12xlarge" | "ml.m6i.16xlarge" | "ml.m6i.24xlarge" | "ml.m6i.32xlarge" | "ml.m7i.large" | "ml.m7i.xlarge" | "ml.m7i.2xlarge" | "ml.m7i.4xlarge" | "ml.m7i.8xlarge" | "ml.m7i.12xlarge" | "ml.m7i.16xlarge" | "ml.m7i.24xlarge" | "ml.m7i.48xlarge" | "ml.c6i.large" | "ml.c6i.xlarge" | "ml.c6i.2xlarge" | "ml.c6i.4xlarge" | "ml.c6i.8xlarge" | "ml.c6i.12xlarge" | "ml.c6i.16xlarge" | "ml.c6i.24xlarge" | "ml.c6i.32xlarge" | "ml.c7i.large" | "ml.c7i.xlarge" | "ml.c7i.2xlarge" | "ml.c7i.4xlarge" | "ml.c7i.8xlarge" | "ml.c7i.12xlarge" | "ml.c7i.16xlarge" | "ml.c7i.24xlarge" | "ml.c7i.48xlarge" | "ml.r6i.large" | "ml.r6i.xlarge" | "ml.r6i.2xlarge" | "ml.r6i.4xlarge" | "ml.r6i.8xlarge" | "ml.r6i.12xlarge" | "ml.r6i.16xlarge" | "ml.r6i.24xlarge" | "ml.r6i.32xlarge" | "ml.r7i.large" | "ml.r7i.xlarge" | "ml.r7i.2xlarge" | "ml.r7i.4xlarge" | "ml.r7i.8xlarge" | "ml.r7i.12xlarge" | "ml.r7i.16xlarge" | "ml.r7i.24xlarge" | "ml.r7i.48xlarge" | "ml.m6id.large" | "ml.m6id.xlarge" | "ml.m6id.2xlarge" | "ml.m6id.4xlarge" | "ml.m6id.8xlarge" | "ml.m6id.12xlarge" | "ml.m6id.16xlarge" | "ml.m6id.24xlarge" | "ml.m6id.32xlarge" | "ml.c6id.large" | "ml.c6id.xlarge" | "ml.c6id.2xlarge" | "ml.c6id.4xlarge" | "ml.c6id.8xlarge" | "ml.c6id.12xlarge" | "ml.c6id.16xlarge" | "ml.c6id.24xlarge" | "ml.c6id.32xlarge" | "ml.r6id.large" | "ml.r6id.xlarge" | "ml.r6id.2xlarge" | "ml.r6id.4xlarge" | "ml.r6id.8xlarge" | "ml.r6id.12xlarge" | "ml.r6id.16xlarge" | "ml.r6id.24xlarge" | "ml.r6id.32xlarge" | "ml.p5.4xlarge" | "ml.p6-b200.48xlarge" | "ml.g7.2xlarge" | "ml.g7.4xlarge" | "ml.g7.8xlarge" | "ml.g7.12xlarge" | "ml.g7.24xlarge" | "ml.g7.48xlarge" | "ml.g7e.2xlarge" | "ml.g7e.4xlarge" | "ml.g7e.8xlarge" | "ml.g7e.12xlarge" | "ml.g7e.24xlarge" | "ml.g7e.48xlarge"

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

#DefaultSpaceStorageSettings: {
	DefaultEbsStorageSettings?: #DefaultEbsStorageSettings
}

#EFSFileSystemConfig: {
	FileSystemId: string & =~"^(fs-[0-9a-f]{8,})$" & strings.MinRunes(11) & strings.MaxRunes(21)
	FileSystemPath?: string & =~"^\\/\\S*$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#EmrSettings: {
	// An array of Amazon Resource Names (ARNs) of the IAM roles that the execution role of SageMaker can assume.
	AssumableRoleArns?: [...string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)]
	// An array of ARNs of IAM roles used by EMR cluster instances or job execution environments.
	ExecutionRoleArns?: [...string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)]
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

#JupyterLabAppSettings: {
	AppLifecycleManagement?: #AppLifecycleManagement
	// The lifecycle configuration that runs before the default lifecycle configuration.
	BuiltInLifecycleConfigArn?: string & =~"^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:studio-lifecycle-config/.*|None)$" & strings.MaxRunes(256)
	// A list of CodeRepositories available for use with JupyterLab apps.
	CodeRepositories?: [...#CodeRepository]
	// A list of custom images available for use for JupyterLab apps
	CustomImages?: [...#CustomImage]
	// The default instance type and the Amazon Resource Name (ARN) of the default SageMaker image used by the JupyterLab app.
	DefaultResourceSpec?: #ResourceSpec
	// The configuration parameters for EMR settings.
	EmrSettings?: #EmrSettings
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

#RStudioServerProAppSettings: {
	// Indicates whether the current user has access to the RStudioServerPro app.
	AccessStatus?: "ENABLED" | "DISABLED"
	// The level of permissions that the user has within the RStudioServerPro app. This value defaults to User. The Admin value allows the user access to the RStudio Administrative Dashboard.
	UserGroup?: "R_STUDIO_ADMIN" | "R_STUDIO_USER"
}

#ResourceSpec: {
	InstanceType?: #AppInstanceType
	// The Amazon Resource Name (ARN) of the Lifecycle Configuration to attach to the Resource.
	LifecycleConfigArn?: string & =~"^(arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:studio-lifecycle-config/.*|None)$" & strings.MaxRunes(256)
	// The ARN of the SageMaker image that the image version belongs to.
	SageMakerImageArn?: string & =~"^arn:aws(-[\\w]+)*:sagemaker:.+:[0-9]{12}:image/[a-z0-9]([-.]?[a-z0-9])*$" & strings.MaxRunes(256)
	// The ARN of the image version created on the instance.
	SageMakerImageVersionArn?: string & =~"^(arn:aws(-[\\w]+)*:sagemaker:.+:[0-9]{12}:image-version/[a-z0-9]([-.]?[a-z0-9])*/[0-9]+|None)" & strings.MaxRunes(256)
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

#UserSettings: {
	// Indicates whether auto-mounting of an EFS volume is supported for the user profile.
	AutoMountHomeEFS?: "Enabled" | "Disabled" | "DefaultAsDomain"
	CodeEditorAppSettings?: #CodeEditorAppSettings
	CustomFileSystemConfigs?: [...#CustomFileSystemConfig]
	CustomPosixUserConfig?: #CustomPosixUserConfig
	// Defines which Amazon SageMaker application users are directed to by default.
	DefaultLandingUri?: string & strings.MaxRunes(1023)
	// The user profile Amazon Resource Name (ARN).
	ExecutionRole?: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	JupyterLabAppSettings?: #JupyterLabAppSettings
	// The Jupyter server's app settings.
	JupyterServerAppSettings?: #JupyterServerAppSettings
	// The kernel gateway app settings.
	KernelGatewayAppSettings?: #KernelGatewayAppSettings
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
