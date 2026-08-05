package space

import "strings"

#Properties: {
	// The ID of the associated Domain.
	DomainId: string & strings.MinRunes(1) & strings.MaxRunes(63)
	OwnershipSettings?: #OwnershipSettings
	SpaceDisplayName?: string & =~"^(?!\\s*$).+" & strings.MaxRunes(64)
	// A name for the Space.
	SpaceName: string & strings.MinRunes(1) & strings.MaxRunes(63)
	// A collection of settings.
	SpaceSettings?: #SpaceSettings
	SpaceSharingSettings?: #SpaceSharingSettings
	// A list of tags to apply to the space.
	Tags?: [...#Tag]
}

#CodeRepository: {
	// A CodeRepository (valid URL) to be used within Jupyter's Git extension.
	RepositoryUrl: string & =~"^https://([.\\-_a-zA-Z0-9]+/?){3,1016}$" & strings.MaxRunes(256)
}

#CustomFileSystem: {
	EFSFileSystem?: #EFSFileSystem
	FSxLustreFileSystem?: #FSxLustreFileSystem
	S3FileSystem?: #S3FileSystem
}

#CustomImage: {
	// The Name of the AppImageConfig.
	AppImageConfigName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}" & strings.MaxRunes(63)
	// The name of the CustomImage. Must be unique to your account.
	ImageName: string & =~"^[a-zA-Z0-9]([-.]?[a-zA-Z0-9]){0,62}$" & strings.MaxRunes(63)
	// The version number of the CustomImage.
	ImageVersionNumber?: int & >=0
}

#EFSFileSystem: {
	FileSystemId: string & =~"^(fs-[0-9a-f]{8,})$" & strings.MinRunes(11) & strings.MaxRunes(21)
}

#EbsStorageSettings: {
	// Size of the Amazon EBS volume in Gb
	EbsVolumeSizeInGb: #SpaceEbsVolumeSizeInGb
}

#FSxLustreFileSystem: {
	FileSystemId: string & =~"^(fs-[0-9a-f]{8,})$" & strings.MinRunes(11) & strings.MaxRunes(21)
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

#OwnershipSettings: {
	OwnerUserProfileName: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}" & strings.MaxRunes(63)
}

#ResourceSpec: {
	// The instance type that the image version runs on.
	InstanceType?: "system" | "ml.t3.micro" | "ml.t3.small" | "ml.t3.medium" | "ml.t3.large" | "ml.t3.xlarge" | "ml.t3.2xlarge" | "ml.m5.large" | "ml.m5.xlarge" | "ml.m5.2xlarge" | "ml.m5.4xlarge" | "ml.m5.8xlarge" | "ml.m5.12xlarge" | "ml.m5.16xlarge" | "ml.m5.24xlarge" | "ml.c5.large" | "ml.c5.xlarge" | "ml.c5.2xlarge" | "ml.c5.4xlarge" | "ml.c5.9xlarge" | "ml.c5.12xlarge" | "ml.c5.18xlarge" | "ml.c5.24xlarge" | "ml.p3.2xlarge" | "ml.p3.8xlarge" | "ml.p3.16xlarge" | "ml.g4dn.xlarge" | "ml.g4dn.2xlarge" | "ml.g4dn.4xlarge" | "ml.g4dn.8xlarge" | "ml.g4dn.12xlarge" | "ml.g4dn.16xlarge" | "ml.r5.large" | "ml.r5.xlarge" | "ml.r5.2xlarge" | "ml.r5.4xlarge" | "ml.r5.8xlarge" | "ml.r5.12xlarge" | "ml.r5.16xlarge" | "ml.r5.24xlarge" | "ml.p3dn.24xlarge" | "ml.m5d.large" | "ml.m5d.xlarge" | "ml.m5d.2xlarge" | "ml.m5d.4xlarge" | "ml.m5d.8xlarge" | "ml.m5d.12xlarge" | "ml.m5d.16xlarge" | "ml.m5d.24xlarge" | "ml.g5.xlarge" | "ml.g5.2xlarge" | "ml.g5.4xlarge" | "ml.g5.8xlarge" | "ml.g5.12xlarge" | "ml.g5.16xlarge" | "ml.g5.24xlarge" | "ml.g5.48xlarge" | "ml.p4d.24xlarge" | "ml.p4de.24xlarge" | "ml.geospatial.interactive" | "ml.trn1.2xlarge" | "ml.trn1.32xlarge" | "ml.trn1n.32xlarge"
	// The Amazon Resource Name (ARN) of the Lifecycle Configuration to attach to the Resource.
	LifecycleConfigArn?: string & =~"arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:studio-lifecycle-config/.*" & strings.MaxRunes(256)
	// The ARN of the SageMaker image that the image version belongs to.
	SageMakerImageArn?: string & =~"^arn:aws(-[\\w]+)*:sagemaker:.+:[0-9]{12}:image/[a-z0-9]([-.]?[a-z0-9])*$" & strings.MaxRunes(256)
	// The ARN of the image version created on the instance.
	SageMakerImageVersionArn?: string & =~"^arn:aws(-[\\w]+)*:sagemaker:.+:[0-9]{12}:image-version/[a-z0-9]([-.]?[a-z0-9])*/[0-9]+$" & strings.MaxRunes(256)
}

#S3FileSystem: {
	S3Uri?: string & =~"(s3)://([^/]+)/?(.*)" & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#SpaceAppLifecycleManagement: {
	IdleSettings?: #SpaceIdleSettings
}

#SpaceCodeEditorAppSettings: {
	AppLifecycleManagement?: #SpaceAppLifecycleManagement
	DefaultResourceSpec?: #ResourceSpec
}

#SpaceIdleSettings: {
	// The space idle timeout value set in minutes
	IdleTimeoutInMinutes?: int & >=60 & <=525600
}

#SpaceJupyterLabAppSettings: {
	AppLifecycleManagement?: #SpaceAppLifecycleManagement
	// A list of CodeRepositories available for use with JupyterLab apps.
	CodeRepositories?: [...#CodeRepository]
	DefaultResourceSpec?: #ResourceSpec
}

#SpaceSettings: {
	AppType?: #AppType
	// The CodeEditor app settings.
	CodeEditorAppSettings?: #SpaceCodeEditorAppSettings
	CustomFileSystems?: #CustomFileSystems
	// The JupyterLab app settings.
	JupyterLabAppSettings?: #SpaceJupyterLabAppSettings
	// The Jupyter server's app settings.
	JupyterServerAppSettings?: #JupyterServerAppSettings
	// The kernel gateway app settings.
	KernelGatewayAppSettings?: #KernelGatewayAppSettings
	// This is a flag used to indicate if remote access is enabled.
	RemoteAccess?: #RemoteAccess
	// This is a flag used to indicate if space managed resources needs to be created.
	SpaceManagedResources?: #SpaceManagedResources
	// Default storage settings for a space.
	SpaceStorageSettings?: #SpaceStorageSettings
}

#SpaceSharingSettings: {
	SharingType: "Private" | "Shared"
}

#SpaceStorageSettings: {
	EbsStorageSettings?: #EbsStorageSettings
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
