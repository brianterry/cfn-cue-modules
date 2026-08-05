package modelqualityjobdefinition

import "strings"

#Properties: {
	EndpointName?: #EndpointName
	JobDefinitionName?: #JobDefinitionName
	JobResources: #MonitoringResources
	ModelQualityAppSpecification: #ModelQualityAppSpecification
	ModelQualityBaselineConfig?: #ModelQualityBaselineConfig
	ModelQualityJobInput: #ModelQualityJobInput
	ModelQualityJobOutputConfig: #MonitoringOutputConfig
	NetworkConfig?: #NetworkConfig
	// The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
	RoleArn: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	StoppingCondition?: #StoppingCondition
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#BatchTransformInput: {
	// A URI that identifies the Amazon S3 storage location where Batch Transform Job captures data.
	DataCapturedDestinationS3Uri: string & =~"^(https|s3)://([^/]+)/?(.*)$" & strings.MaxRunes(512)
	DatasetFormat: #DatasetFormat
	// Monitoring end time offset, e.g. PT0H
	EndTimeOffset?: #MonitoringTimeOffsetString
	// Index or JSONpath to locate predicted label(s)
	InferenceAttribute?: string & strings.MaxRunes(256)
	// Path to the filesystem where the endpoint data is available to the container.
	LocalPath: string & =~".*" & strings.MaxRunes(256)
	// Index or JSONpath to locate probabilities
	ProbabilityAttribute?: string & strings.MaxRunes(256)
	ProbabilityThresholdAttribute?: number
	// Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defauts to FullyReplicated
	S3DataDistributionType?: "FullyReplicated" | "ShardedByS3Key"
	// Whether the Pipe or File is used as the input mode for transfering data for the monitoring job. Pipe mode is recommended for large datasets. File mode is useful for small files that fit in memory. Defaults to File.
	S3InputMode?: "Pipe" | "File"
	// Monitoring start time offset, e.g. -PT1H
	StartTimeOffset?: #MonitoringTimeOffsetString
}

#ClusterConfig: {
	// The number of ML compute instances to use in the model monitoring job. For distributed processing jobs, specify a value greater than 1. The default value is 1.
	InstanceCount: int & >=1 & <=100
	// The ML compute instance type for the processing job.
	InstanceType: string
	// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the model monitoring job.
	VolumeKmsKeyId?: string
	// The size of the ML storage volume, in gigabytes, that you want to provision. You must specify sufficient ML storage for your scenario.
	VolumeSizeInGB: int & >=1 & <=16384
}

#ConstraintsResource: {
	// The Amazon S3 URI for baseline constraint file in Amazon S3 that the current monitoring job should validated against.
	S3Uri?: #S3Uri
}

#Csv: {
	// A boolean flag indicating if given CSV has header
	Header?: bool
}

#DatasetFormat: {
	Csv?: #Csv
	Json?: #Json
	Parquet?: #Parquet
}

#EndpointInput: {
	// Monitoring end time offset, e.g. PT0H
	EndTimeOffset?: #MonitoringTimeOffsetString
	EndpointName: #EndpointName
	// Index or JSONpath to locate predicted label(s)
	InferenceAttribute?: string & strings.MaxRunes(256)
	// Path to the filesystem where the endpoint data is available to the container.
	LocalPath: string & =~".*" & strings.MaxRunes(256)
	// Index or JSONpath to locate probabilities
	ProbabilityAttribute?: string & strings.MaxRunes(256)
	ProbabilityThresholdAttribute?: number
	// Whether input data distributed in Amazon S3 is fully replicated or sharded by an S3 key. Defauts to FullyReplicated
	S3DataDistributionType?: "FullyReplicated" | "ShardedByS3Key"
	// Whether the Pipe or File is used as the input mode for transfering data for the monitoring job. Pipe mode is recommended for large datasets. File mode is useful for small files that fit in memory. Defaults to File.
	S3InputMode?: "Pipe" | "File"
	// Monitoring start time offset, e.g. -PT1H
	StartTimeOffset?: #MonitoringTimeOffsetString
}

#Json: {
	// A boolean flag indicating if it is JSON line format
	Line?: bool
}

#ModelQualityAppSpecification: {
	// An array of arguments for the container used to run the monitoring job.
	ContainerArguments?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	// Specifies the entrypoint for a container used to run the monitoring job.
	ContainerEntrypoint?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	// Sets the environment variables in the Docker container
	Environment?: {...}
	// The container image to be run by the monitoring job.
	ImageUri: string & =~".*" & strings.MaxRunes(255)
	// An Amazon S3 URI to a script that is called after analysis has been performed. Applicable only for the built-in (first party) containers.
	PostAnalyticsProcessorSourceUri?: #S3Uri
	ProblemType: #ProblemType
	// An Amazon S3 URI to a script that is called per row prior to running analysis. It can base64 decode the payload and convert it into a flatted json so that the built-in container can use the converted data. Applicable only for the built-in (first party) containers
	RecordPreprocessorSourceUri?: #S3Uri
}

#ModelQualityBaselineConfig: {
	BaseliningJobName?: #ProcessingJobName
	ConstraintsResource?: #ConstraintsResource
}

#ModelQualityJobInput: {
	BatchTransformInput?: #BatchTransformInput
	EndpointInput?: #EndpointInput
	GroundTruthS3Input: #MonitoringGroundTruthS3Input
}

#MonitoringGroundTruthS3Input: {
	// A URI that identifies the Amazon S3 storage location where Amazon SageMaker saves the results of a monitoring job.
	S3Uri: string & =~"^(https|s3)://([^/]+)/?(.*)$" & strings.MaxRunes(512)
}

#MonitoringOutput: {
	S3Output: #S3Output
}

#MonitoringOutputConfig: {
	// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
	KmsKeyId?: string & =~".*" & strings.MaxRunes(2048)
	// Monitoring outputs for monitoring jobs. This is where the output of the periodic monitoring jobs is uploaded.
	MonitoringOutputs: [...#MonitoringOutput]
}

#MonitoringResources: {
	ClusterConfig: #ClusterConfig
}

#NetworkConfig: {
	// Whether to encrypt all communications between distributed processing jobs. Choose True to encrypt communications. Encryption provides greater security for distributed processing jobs, but the processing might take longer.
	EnableInterContainerTrafficEncryption?: bool
	// Whether to allow inbound and outbound network calls to and from the containers used for the processing job.
	EnableNetworkIsolation?: bool
	VpcConfig?: #VpcConfig
}

#S3Output: {
	// The local path to the Amazon S3 storage location where Amazon SageMaker saves the results of a monitoring job. LocalPath is an absolute path for the output data.
	LocalPath: string & =~".*" & strings.MaxRunes(256)
	// Whether to upload the results of the monitoring job continuously or after the job completes.
	S3UploadMode?: "Continuous" | "EndOfJob"
	// A URI that identifies the Amazon S3 storage location where Amazon SageMaker saves the results of a monitoring job.
	S3Uri: string & =~"^(https|s3)://([^/]+)/?(.*)$" & strings.MaxRunes(512)
}

#StoppingCondition: {
	// The maximum runtime allowed in seconds.
	MaxRuntimeInSeconds: int & >=1 & <=86400
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MaxRunes(256)
}

#VpcConfig: {
	// The VPC security group IDs, in the form sg-xxxxxxxx. Specify the security groups for the VPC that is specified in the Subnets field.
	SecurityGroupIds: [...string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)]
	// The ID of the subnets in the VPC to which you want to connect to your monitoring jobs.
	Subnets: [...string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)]
}
