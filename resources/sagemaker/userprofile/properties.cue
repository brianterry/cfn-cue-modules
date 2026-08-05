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

#AppLifecycleManagement: {
	IdleSettings?: #IdleSettings
}

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
