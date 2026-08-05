package canary

import "strings"

#Properties: {
	// Provide artifact configuration
	ArtifactConfig?: #ArtifactConfig
	// Provide the s3 bucket output location for test results
	ArtifactS3Location: string & =~"^(s3|S3)://"
	// List of browser configurations for the canary
	BrowserConfigs?: [...#BrowserConfig]
	// Deletes associated lambda resources created by Synthetics if set to True. Default is False
	DeleteLambdaResourcesOnCanaryDeletion?: bool
	// Setting to control if UpdateCanary will perform a DryRun and validate it is PASSING before performing the Update. Default is FALSE.
	DryRunAndUpdate?: bool
	// Lambda Execution role used to run your canaries
	ExecutionRoleArn: string
	// Retention period of failed canary runs represented in number of days
	FailureRetentionPeriod?: int
	// KMS key ARN for encrypting the canary's Lambda function environment variables at rest. If omitted, Lambda uses an AWS-managed key.
	KmsKeyArn?: string & =~"^arn:[a-z0-9-]+:kms:[a-z0-9-]+:[0-9]{12}:(key/([a-f0-9-]{36}|mrk-[a-f0-9]{32})|alias/[a-zA-Z0-9:/_.-]+)$"
	// Name of the canary.
	Name: string & =~"^[0-9a-z_\\-]{1,255}$"
	// Setting to control if provisioned resources created by Synthetics are deleted alongside the canary. Default is AUTOMATIC.
	ProvisionedResourceCleanup?: "AUTOMATIC" | "OFF"
	// List of resources which canary tags should be replicated to.
	ResourcesToReplicateTags?: [...#ResourceToTag]
	// Provide canary run configuration
	RunConfig?: #RunConfig
	// Runtime version of Synthetics Library
	RuntimeVersion: string
	// Frequency to run your canaries
	Schedule: #Schedule
	// Runs canary if set to True. Default is False
	StartCanaryAfterCreation?: bool
	// Retention period of successful canary runs represented in number of days
	SuccessRetentionPeriod?: int
	Tags?: [...#Tag]
	// Provide VPC Configuration if enabled.
	VPCConfig?: #VPCConfig
	// Visual reference configuration for visual testing
	VisualReference?: #VisualReference
	// List of visual references for the canary
	VisualReferences?: [...#VisualReference]
}

#ArtifactConfig: {
	// Encryption configuration for uploading artifacts to S3
	S3Encryption?: #S3Encryption
}

#BaseScreenshot: {
	// List of coordinates of rectangles to be ignored during visual testing
	IgnoreCoordinates?: [...string]
	// Name of the screenshot to be used as base reference for visual testing
	ScreenshotName: string
}

#BrowserConfig: {
	BrowserType: #BrowserType
}

#BrowserType: "CHROME" | "FIREFOX"

#Code: {
	BlueprintTypes?: [...string]
	// List of Lambda layers to attach to the canary
	Dependencies?: [...#Dependency]
	Handler?: string
	S3Bucket?: string
	S3Key?: string
	S3ObjectVersion?: string
	Script?: string
	SourceLocationArn?: string
}

#Dependency: {
	// ARN of the Lambda layer
	Reference: string & =~"arn:[a-zA-Z0-9-]+:lambda:[a-zA-Z0-9-]+:\\d{12}:layer:[a-zA-Z0-9-_]+:[0-9]+" & strings.MinRunes(1) & strings.MaxRunes(140)
	// Type of dependency
	Type?: "LambdaLayer"
}

#Replica: {
	// State of the replica canary (CREATING, READY, RUNNING, etc.)
	CanaryState?: string
	// ARN of the KMS key used to encrypt the replica canary's Lambda function environment variables
	KmsKeyArn?: string & =~"^arn:[a-z0-9-]+:kms:[a-z0-9-]+:[0-9]{12}:(key/([a-f0-9-]{36}|mrk-[a-f0-9]{32})|alias/[a-zA-Z0-9:/_.-]+)$"
	// Last modified timestamp of the replica
	LastModified?: number
	// AWS region for the replica (e.g., us-east-1)
	Location: string
	// Replication status for this replica
	ReplicationStatus?: #ReplicaReplicationStatus
	// Resources to replicate tags to for this replica (e.g., lambda-function)
	ResourcesToReplicateTags?: [...#ResourceToTag]
	// Tags to apply to this replica canary and optionally its Lambda function
	Tags?: [...#Tag]
	// VPC configuration for this replica location
	VpcConfig?: #VPCConfig
}

#ReplicaReplicationStatus: {
	// Replication state: InProgress, InSync, or Inconsistent
	State?: string
}

#ResourceToTag: "lambda-function"

#RetryConfig: {
	// maximum times the canary will be retried upon the scheduled run failure
	MaxRetries: int
}

#RunConfig: {
	// Enable active tracing if set to true
	ActiveTracing?: bool
	// Environment variable key-value pairs.
	EnvironmentVariables?: {...}
	// Provide ephemeralStorage available for canary in MB
	EphemeralStorage?: int
	// Provide maximum memory available for canary in MB
	MemoryInMB?: int
	// Provide maximum canary timeout per run in seconds
	TimeoutInSeconds?: int
}

#S3Encryption: {
	// Encryption mode for encrypting artifacts when uploading to S3. Valid values: SSE_S3 and SSE_KMS.
	EncryptionMode?: string
	// KMS key Arn for encrypting artifacts when uploading to S3. You must specify KMS key Arn for SSE_KMS encryption mode only.
	KmsKeyArn?: string
}

#Schedule: {
	DurationInSeconds?: string
	Expression: string
	// Provide canary auto retry configuration
	RetryConfig?: #RetryConfig
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VPCConfig: {
	// Allow outbound IPv6 traffic on VPC canaries that are connected to dual-stack subnets if set to true
	Ipv6AllowedForDualStack?: bool
	SecurityGroupIds: [...string]
	SubnetIds: [...string]
	VpcId?: string
}

#VisualReference: {
	// Canary run id to be used as base reference for visual testing
	BaseCanaryRunId: string
	// List of screenshots used as base reference for visual testing
	BaseScreenshots?: [...#BaseScreenshot]
	BrowserType?: #BrowserType
}
