package pipeline

import "strings"

#Properties: {
	BufferOptions?: #BufferOptions
	EncryptionAtRestOptions?: #EncryptionAtRestOptions
	LogPublishingOptions?: #LogPublishingOptions
	// The maximum pipeline capacity, in Ingestion OpenSearch Compute Units (OCUs).
	MaxUnits: int & >=1 & <=384
	// The minimum pipeline capacity, in Ingestion OpenSearch Compute Units (OCUs).
	MinUnits: int & >=1 & <=384
	// The Data Prepper pipeline configuration.
	PipelineConfigurationBody: string & strings.MinRunes(1) & strings.MaxRunes(100000)
	// Name of the OpenSearch Ingestion Service pipeline to create. Pipeline names are unique across the pipelines owned by an account within an AWS Region.
	PipelineName: string & =~"[a-z][a-z0-9\\-]+" & strings.MinRunes(3) & strings.MaxRunes(28)
	// The Pipeline Role (ARN) for the pipeline.
	PipelineRoleArn?: string & =~"^arn:(aws|aws\\-cn|aws\\-us\\-gov|aws\\-iso|aws\\-iso\\-b|aws\\-iso\\-e|aws\\-iso\\-f):iam::[0-9]+:role\\/.*$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ResourcePolicy?: #ResourcePolicy
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	VpcOptions?: #VpcOptions
}

#BufferOptions: {
	// Whether persistent buffering should be enabled.
	PersistentBufferEnabled: bool
}

#EncryptionAtRestOptions: {
	// The KMS key to use for encrypting data. By default an AWS owned key is used
	KmsKeyArn: string
}

#LogPublishingOptions: {
	// The destination for OpenSearch Ingestion Service logs sent to Amazon CloudWatch.
	CloudWatchLogDestination?: {
		LogGroup: string & =~"\\/aws\\/vendedlogs\\/[\\.\\-_/#A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(512)
	}
	// Whether logs should be published.
	IsLoggingEnabled?: bool
}

#ResourcePolicy: {
	Policy: {...}
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcEndpoint: {
	// The unique identifier of the endpoint.
	VpcEndpointId?: string
	// The ID for your VPC. AWS Privatelink generates this value when you create a VPC.
	VpcId?: string
	VpcOptions?: #VpcOptions
}

#VpcOptions: {
	// A list of security groups associated with the VPC endpoint.
	SecurityGroupIds?: [...string & =~"sg-\\w{8}(\\w{9})?" & strings.MinRunes(11) & strings.MaxRunes(20)]
	// A list of subnet IDs associated with the VPC endpoint.
	SubnetIds: [...string & =~"subnet-\\w{8}(\\w{9})?" & strings.MinRunes(15) & strings.MaxRunes(24)]
	// Options for attaching a VPC to the pipeline.
	VpcAttachmentOptions?: {
		AttachToVpc: bool
		CidrBlock: string & =~"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/(3[0-2]|[12]?[0-9])$"
	}
	// Defines whether you or Amazon OpenSearch Ingestion service create and manage the VPC endpoint configured for the pipeline.
	VpcEndpointManagement?: "CUSTOMER" | "SERVICE"
}
