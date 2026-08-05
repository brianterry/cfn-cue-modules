package image

#Properties: {
	// The Amazon Resource Name (ARN) of the container recipe that defines how images are configured and tested.
	ContainerRecipeArn?: string
	// The deletion settings of the image, indicating whether to delete the underlying resources in addition to the image.
	DeletionSettings?: #DeletionSettings
	// The Amazon Resource Name (ARN) of the distribution configuration.
	DistributionConfigurationArn?: string
	// Collects additional information about the image being created, including the operating system (OS) version and package list.
	EnhancedImageMetadataEnabled?: bool
	// The execution role name/ARN for the image build, if provided
	ExecutionRole?: string
	// The image pipeline execution settings of the image.
	ImagePipelineExecutionSettings?: #ImagePipelineExecutionSettings
	// The Amazon Resource Name (ARN) of the image recipe that defines how images are configured, tested, and assessed.
	ImageRecipeArn?: string
	// Contains settings for vulnerability scans.
	ImageScanningConfiguration?: #ImageScanningConfiguration
	// The image tests configuration used when creating this image.
	ImageTestsConfiguration?: #ImageTestsConfiguration
	// The Amazon Resource Name (ARN) of the infrastructure configuration.
	InfrastructureConfigurationArn?: string
	// The logging configuration settings for the image.
	LoggingConfiguration?: #ImageLoggingConfiguration
	// The tags associated with the image.
	Tags?: {...}
	// Workflows to define the image build process
	Workflows?: [...#WorkflowConfiguration]
}

#DeletionSettings: {
	// The execution role to use for deleting the image, as well as underlying resources.
	ExecutionRole: string
}

#EcrConfiguration: {
	// Tags for Image Builder to apply the output container image that is scanned. Tags can help you identify and manage your scanned images.
	ContainerTags?: [...string]
	// The name of the container repository that Amazon Inspector scans to identify findings for your container images. The name includes the path for the repository location. If you don’t provide this information, Image Builder creates a repository in your account named image-builder-image-scanning-repository to use for vulnerability scans for your output container images.
	RepositoryName?: string
}

#ImageLoggingConfiguration: {
	// The name of the log group for image build logs.
	LogGroupName?: string
}

#ImagePipelineExecutionSettings: {
	// The deployment ID of the pipeline, used to trigger new image pipeline executions.
	DeploymentId?: string
	// Whether to trigger the image pipeline when the pipeline is updated. False by default.
	OnUpdate?: bool
}

#ImageScanningConfiguration: {
	// Contains ECR settings for vulnerability scans.
	EcrConfiguration?: #EcrConfiguration
	// This sets whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image.
	ImageScanningEnabled?: bool
}

#ImageTestsConfiguration: {
	// ImageTestsEnabled
	ImageTestsEnabled?: bool
	// TimeoutMinutes
	TimeoutMinutes?: int & >=60 & <=1440
}

#LatestVersion: {
	// The latest version ARN of the created image.
	Arn?: string
	// The latest version ARN of the created image, with the same major version.
	Major?: string
	// The latest version ARN of the created image, with the same minor version.
	Minor?: string
	// The latest version ARN of the created image, with the same patch version.
	Patch?: string
}

#WorkflowConfiguration: {
	// Define execution decision in case of workflow failure
	OnFailure?: "CONTINUE" | "ABORT"
	// The parallel group name
	ParallelGroup?: string
	// The parameters associated with the workflow
	Parameters?: [...#WorkflowParameter]
	// The Amazon Resource Name (ARN) of the workflow
	WorkflowArn?: string
}

#WorkflowParameter: {
	Name?: string
	Value?: [...#WorkflowParameterValue]
}

#WorkflowParameterValue: string
