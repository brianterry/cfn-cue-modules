package imagepipeline

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the container recipe that defines how images are configured and tested.
	ContainerRecipeArn?: string
	// The description of the image pipeline.
	Description?: string
	// The Amazon Resource Name (ARN) of the distribution configuration associated with this image pipeline.
	DistributionConfigurationArn?: string
	// Collects additional information about the image being created, including the operating system (OS) version and package list.
	EnhancedImageMetadataEnabled?: bool
	// The execution role name/ARN for the image build, if provided
	ExecutionRole?: string
	// The Amazon Resource Name (ARN) of the image recipe that defines how images are configured, tested, and assessed.
	ImageRecipeArn?: string
	// Contains settings for vulnerability scans.
	ImageScanningConfiguration?: #ImageScanningConfiguration
	// The tags to be applied to images created by this pipeline.
	ImageTags?: {...}
	// The image tests configuration of the image pipeline.
	ImageTestsConfiguration?: #ImageTestsConfiguration
	// The Amazon Resource Name (ARN) of the infrastructure configuration associated with this image pipeline.
	InfrastructureConfigurationArn?: string
	// The logging configuration settings for the image pipeline.
	LoggingConfiguration?: #PipelineLoggingConfiguration
	// The name of the image pipeline.
	Name?: string
	// The schedule of the image pipeline.
	Schedule?: #Schedule
	// The status of the image pipeline.
	Status?: "DISABLED" | "ENABLED"
	// The tags of this image pipeline.
	Tags?: {...}
	// Workflows to define the image build process
	Workflows?: [...#WorkflowConfiguration]
}

#AutoDisablePolicy: {
	// The number of consecutive failures after which the pipeline should be automatically disabled.
	FailureCount: int & >=1
}

#EcrConfiguration: {
	// Tags for Image Builder to apply the output container image that is scanned. Tags can help you identify and manage your scanned images.
	ContainerTags?: [...string]
	// The name of the container repository that Amazon Inspector scans to identify findings for your container images. The name includes the path for the repository location. If you don't provide this information, Image Builder creates a repository in your account named image-builder-image-scanning-repository to use for vulnerability scans for your output container images.
	RepositoryName?: string
}

#ImageScanningConfiguration: {
	// Contains ECR settings for vulnerability scans.
	EcrConfiguration?: #EcrConfiguration
	// This sets whether Image Builder keeps a snapshot of the vulnerability scans that Amazon Inspector runs against the build instance when you create a new image.
	ImageScanningEnabled?: bool
}

#ImageTestsConfiguration: {
	// Defines if tests should be executed when building this image.
	ImageTestsEnabled?: bool
	// The maximum time in minutes that tests are permitted to run.
	TimeoutMinutes?: int & >=60 & <=1440
}

#PipelineLoggingConfiguration: {
	// The name of the log group for image build logs.
	ImageLogGroupName?: string
	// The name of the log group for pipeline execution logs.
	PipelineLogGroupName?: string
}

#Schedule: {
	// The auto-disable policy for the image pipeline.
	AutoDisablePolicy?: #AutoDisablePolicy
	// The condition configures when the pipeline should trigger a new image build.
	PipelineExecutionStartCondition?: "EXPRESSION_MATCH_ONLY" | "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"
	// The expression determines how often EC2 Image Builder evaluates your pipelineExecutionStartCondition.
	ScheduleExpression?: string
	// The timezone that applies to the scheduling expression, for example "Etc/UTC" or "America/Los_Angeles" in IANA timezone format. If not specified, this defaults to UTC.
	Timezone?: string & =~"^[a-zA-Z0-9]{2,}(?:\\/[a-zA-Z0-9\\-_+]+)*$" & strings.MinRunes(3) & strings.MaxRunes(100)
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
