package processingjob

import "strings"

#Properties: {
	AppSpecification: #AppSpecification
	Environment?: #Environment
	ExperimentConfig?: #ExperimentConfig
	NetworkConfig?: #NetworkConfig
	// An array of inputs configuring the data to download into the processing container.
	ProcessingInputs?: [...#ProcessingInputsObject]
	// The name of the processing job. The name must be unique within an AWS Region in the AWS account.
	ProcessingJobName?: string & =~"[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}" & strings.MinRunes(1) & strings.MaxRunes(63)
	ProcessingOutputConfig?: #ProcessingOutputConfig
	ProcessingResources: #ProcessingResources
	// The Amazon Resource Name (ARN) of an IAM role that Amazon SageMaker can assume to perform tasks on your behalf.
	RoleArn: string & =~"arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	StoppingCondition?: #StoppingCondition
	// (Optional) An array of key-value pairs. For more information, see Using Cost Allocation Tags(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL) in the AWS Billing and Cost Management User Guide.
	Tags?: [...#Tag]
}

#AppSpecification: {
	// The arguments for a container used to run a processing job.
	ContainerArguments?: [...string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(256)]
	// The entrypoint for a container used to run a processing job.
	ContainerEntrypoint?: [...string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(256)]
	// The container image to be run by the processing job.
	ImageUri: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#AthenaDatasetDefinition: {
	// The name of the data catalog used in Athena query execution.
	Catalog: string & strings.MaxRunes(256)
	// The name of the database used in the Athena query execution.
	Database: string & =~".*" & strings.MaxRunes(255)
	// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data generated from an Athena query execution.
	KmsKeyId?: string & =~"[a-zA-Z0-9:/_-]*" & strings.MinRunes(0) & strings.MaxRunes(2048)
	// The compression used for Athena query results.
	OutputCompression?: "GZIP" | "SNAPPY" | "ZLIB"
	// The data storage format for Athena query results.
	OutputFormat: "PARQUET" | "AVRO" | "ORC" | "JSON" | "TEXTFILE"
	// The location in Amazon S3 where Athena query results are stored.
	OutputS3Uri: string & =~"(https|s3)://([^/]+)/?(.*)" & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The SQL query statements, to be executed.
	QueryString: string & =~"[\\s\\S]+" & strings.MaxRunes(4096)
	// The name of the workgroup in which the Athena query is being started.
	WorkGroup?: string & =~"[a-zA-Z0-9._-]+" & strings.MaxRunes(128)
}

#ClusterConfig: {
	// The number of ML compute instances to use in the processing job. For distributed processing jobs, specify a value greater than 1. The default value is 1.
	InstanceCount: int & >=1 & <=100
	// The ML compute instance type for the processing job.
	InstanceType: "ml.t3.medium" | "ml.t3.large" | "ml.t3.xlarge" | "ml.t3.2xlarge" | "ml.m4.xlarge" | "ml.m4.2xlarge" | "ml.m4.4xlarge" | "ml.m4.10xlarge" | "ml.m4.16xlarge" | "ml.c4.xlarge" | "ml.c4.2xlarge" | "ml.c4.4xlarge" | "ml.c4.8xlarge" | "ml.c5.xlarge" | "ml.c5.2xlarge" | "ml.c5.4xlarge" | "ml.c5.9xlarge" | "ml.c5.18xlarge" | "ml.m5.large" | "ml.m5.xlarge" | "ml.m5.2xlarge" | "ml.m5.4xlarge" | "ml.m5.12xlarge" | "ml.m5.24xlarge" | "ml.r5.large" | "ml.r5.xlarge" | "ml.r5.2xlarge" | "ml.r5.4xlarge" | "ml.r5.8xlarge" | "ml.r5.12xlarge" | "ml.r5.16xlarge" | "ml.r5.24xlarge" | "ml.g4dn.xlarge" | "ml.g4dn.2xlarge" | "ml.g4dn.4xlarge" | "ml.g4dn.8xlarge" | "ml.g4dn.12xlarge" | "ml.g4dn.16xlarge" | "ml.g5.xlarge" | "ml.g5.2xlarge" | "ml.g5.4xlarge" | "ml.g5.8xlarge" | "ml.g5.16xlarge" | "ml.g5.12xlarge" | "ml.g5.24xlarge" | "ml.g5.48xlarge" | "ml.r5d.large" | "ml.r5d.xlarge" | "ml.r5d.2xlarge" | "ml.r5d.4xlarge" | "ml.r5d.8xlarge" | "ml.r5d.12xlarge" | "ml.r5d.16xlarge" | "ml.r5d.24xlarge" | "ml.g6.xlarge" | "ml.g6.2xlarge" | "ml.g6.4xlarge" | "ml.g6.8xlarge" | "ml.g6.12xlarge" | "ml.g6.16xlarge" | "ml.g6.24xlarge" | "ml.g6.48xlarge" | "ml.g6e.xlarge" | "ml.g6e.2xlarge" | "ml.g6e.4xlarge" | "ml.g6e.8xlarge" | "ml.g6e.12xlarge" | "ml.g6e.16xlarge" | "ml.g6e.24xlarge" | "ml.g6e.48xlarge" | "ml.m6i.large" | "ml.m6i.xlarge" | "ml.m6i.2xlarge" | "ml.m6i.4xlarge" | "ml.m6i.8xlarge" | "ml.m6i.12xlarge" | "ml.m6i.16xlarge" | "ml.m6i.24xlarge" | "ml.m6i.32xlarge" | "ml.c6i.xlarge" | "ml.c6i.2xlarge" | "ml.c6i.4xlarge" | "ml.c6i.8xlarge" | "ml.c6i.12xlarge" | "ml.c6i.16xlarge" | "ml.c6i.24xlarge" | "ml.c6i.32xlarge" | "ml.m7i.large" | "ml.m7i.xlarge" | "ml.m7i.2xlarge" | "ml.m7i.4xlarge" | "ml.m7i.8xlarge" | "ml.m7i.12xlarge" | "ml.m7i.16xlarge" | "ml.m7i.24xlarge" | "ml.m7i.48xlarge" | "ml.c7i.large" | "ml.c7i.xlarge" | "ml.c7i.2xlarge" | "ml.c7i.4xlarge" | "ml.c7i.8xlarge" | "ml.c7i.12xlarge" | "ml.c7i.16xlarge" | "ml.c7i.24xlarge" | "ml.c7i.48xlarge" | "ml.r7i.large" | "ml.r7i.xlarge" | "ml.r7i.2xlarge" | "ml.r7i.4xlarge" | "ml.r7i.8xlarge" | "ml.r7i.12xlarge" | "ml.r7i.16xlarge" | "ml.r7i.24xlarge" | "ml.r7i.48xlarge"
	// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data on the storage volume attached to the ML compute instance(s) that run the processing job.
	VolumeKmsKeyId?: string & =~"[a-zA-Z0-9:/_-]*" & strings.MinRunes(0) & strings.MaxRunes(2048)
	// The size of the ML storage volume in gigabytes that you want to provision. You must specify sufficient ML storage for your scenario.
	VolumeSizeInGB: int & >=1 & <=16384
}

#DatasetDefinition: {
	AthenaDatasetDefinition?: #AthenaDatasetDefinition
	// Whether the generated dataset is FullyReplicated or ShardedByS3Key (default).
	DataDistributionType?: "FullyReplicated" | "ShardedByS3Key"
	// Whether to use File or Pipe input mode. In File (default) mode, Amazon SageMaker copies the data from the input source onto the local Amazon Elastic Block Store (Amazon EBS) volumes before starting your training algorithm. This is the most commonly used input mode. In Pipe mode, Amazon SageMaker streams input data from the source directly to your algorithm without using the EBS volume.
	InputMode?: "File" | "Pipe"
	// The local path where you want Amazon SageMaker to download the Dataset Definition inputs to run a processing job. LocalPath is an absolute path to the input data. This is a required parameter when AppManaged is False (default).
	LocalPath?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(256)
	RedshiftDatasetDefinition?: #RedshiftDatasetDefinition
}

#ExperimentConfig: {
	// The name of an existing experiment to associate with the trial component.
	ExperimentName?: string & =~"[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}" & strings.MaxRunes(120)
	// The name of the experiment run to associate with the trial component.
	RunName?: string & =~"[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}" & strings.MaxRunes(120)
	// The display name for the trial component. If this key isn't specified, the display name is the trial component name.
	TrialComponentDisplayName?: string & =~"[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}" & strings.MaxRunes(120)
	// The name of an existing trial to associate the trial component with. If not specified, a new trial is created.
	TrialName?: string & =~"[a-zA-Z0-9](-*[a-zA-Z0-9]){0,119}" & strings.MaxRunes(120)
}

#FeatureStoreOutput: {
	// The name of the Amazon SageMaker FeatureGroup to use as the destination for processing job output. Note that your processing script is responsible for putting records into your Feature Store.
	FeatureGroupName: string & =~"[a-zA-Z0-9]([_-]*[a-zA-Z0-9]){0,63}" & strings.MaxRunes(64)
}

#NetworkConfig: {
	// Whether to encrypt all communications between distributed processing jobs. Choose True to encrypt communications. Encryption provides greater security for distributed processing jobs, but the processing might take longer.
	EnableInterContainerTrafficEncryption?: bool
	// Whether to allow inbound and outbound network calls to and from the containers used for the processing job.
	EnableNetworkIsolation?: bool
	VpcConfig?: #VpcConfig
}

#ProcessingInputsObject: {
	// When True, input operations such as data download are managed natively by the processing job application. When False (default), input operations are managed by Amazon SageMaker.
	AppManaged?: bool
	DatasetDefinition?: #DatasetDefinition
	// The name for the processing job input.
	InputName: string
	S3Input?: #S3Input
}

#ProcessingOutputConfig: {
	// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the processing job output. KmsKeyId can be an ID of a KMS key, ARN of a KMS key, or alias of a KMS key. The KmsKeyId is applied to all outputs.
	KmsKeyId?: string & =~"[a-zA-Z0-9:/_-]*" & strings.MaxRunes(2048)
	// An array of outputs configuring the data to upload from the processing container.
	Outputs: [...#ProcessingOutputsObject]
}

#ProcessingOutputsObject: {
	// When True, output operations such as data upload are managed natively by the processing job application. When False (default), output operations are managed by Amazon SageMaker.
	AppManaged?: bool
	FeatureStoreOutput?: #FeatureStoreOutput
	// The name for the processing job output.
	OutputName: string
	S3Output?: #S3Output
}

#ProcessingResources: {
	ClusterConfig: #ClusterConfig
}

#RedshiftDatasetDefinition: {
	// The Redshift cluster Identifier.
	ClusterId: string & =~".*" & strings.MaxRunes(63)
	// The IAM role attached to your Redshift cluster that Amazon SageMaker uses to generate datasets.
	ClusterRoleArn: string & =~"arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The name of the Redshift database used in Redshift query execution.
	Database: string & =~".*" & strings.MaxRunes(64)
	// The database user name used in Redshift query execution.
	DbUser: string & =~".*" & strings.MaxRunes(128)
	// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt data from a Redshift execution.
	KmsKeyId?: string & =~"[a-zA-Z0-9:/_-]*" & strings.MinRunes(0) & strings.MaxRunes(2048)
	// The compression used for Redshift query results.
	OutputCompression?: "None" | "GZIP" | "SNAPPY" | "ZSTD" | "BZIP2"
	// The data storage format for Redshift query results.
	OutputFormat: "PARQUET" | "CSV"
	// The location in Amazon S3 where the Redshift query results are stored.
	OutputS3Uri: string & =~"(https|s3)://([^/]+)/?(.*)" & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The SQL query statements to be executed.
	QueryString: string & =~"[\\s\\S]+" & strings.MaxRunes(4096)
}

#S3Input: {
	// The local path in your container where you want Amazon SageMaker to write input data to. `LocalPath` is an absolute path to the input data and must begin with `/opt/ml/processing/`. LocalPath is a required parameter when `AppManaged` is `False` (default).
	LocalPath?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(256)
	// Whether to GZIP-decompress the data in Amazon S3 as it is streamed into the processing container. `Gzip` can only be used when `Pipe` mode is specified as the `S3InputMode`. In `Pipe` mode, Amazon SageMaker streams input data from the source directly to your container without using the EBS volume.
	S3CompressionType?: "None" | "Gzip"
	// Whether to distribute the data from Amazon S3 to all processing instances with `FullyReplicated`, or whether the data from Amazon S3 is shared by Amazon S3 key, downloading one shard of data to each processing instance.
	S3DataDistributionType?: "FullyReplicated" | "ShardedByS3Key"
	// Whether you use an S3Prefix or a ManifestFile for the data type. If you choose S3Prefix, S3Uri identifies a key name prefix. Amazon SageMaker uses all objects with the specified key name prefix for the processing job. If you choose ManifestFile, S3Uri identifies an object that is a manifest file containing a list of object keys that you want Amazon SageMaker to use for the processing job.
	S3DataType: "ManifestFile" | "S3Prefix"
	// Whether to use File or Pipe input mode. In File mode, Amazon SageMaker copies the data from the input source onto the local ML storage volume before starting your processing container. This is the most commonly used input mode. In Pipe mode, Amazon SageMaker streams input data from the source directly to your processing container into named pipes without using the ML storage volume.
	S3InputMode?: "File" | "Pipe"
	// The URI of the Amazon S3 prefix Amazon SageMaker downloads data required to run a processing job.
	S3Uri: string & =~"(https|s3)://([^/]+)/?(.*)" & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#S3Output: {
	// The local path of a directory where you want Amazon SageMaker to upload its contents to Amazon S3. LocalPath is an absolute path to a directory containing output files. This directory will be created by the platform and exist when your container's entrypoint is invoked.
	LocalPath?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(256)
	// Whether to upload the results of the processing job continuously or after the job completes.
	S3UploadMode: "Continuous" | "EndOfJob"
	// A URI that identifies the Amazon S3 bucket where you want Amazon SageMaker to save the results of a processing job.
	S3Uri: string & =~"(https|s3)://([^/]+)/?(.*)" & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#StoppingCondition: {
	// Specifies the maximum runtime in seconds.
	MaxRuntimeInSeconds: int & >=1 & <=777600
}

#Tag: {
	// The tag key. Tag keys must be unique per resource.
	Key: string & =~"([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)" & strings.MaxRunes(128)
	// The tag value.
	Value: string & =~"([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)" & strings.MaxRunes(256)
}

#VpcConfig: {
	// The VPC security group IDs, in the form 'sg-xxxxxxxx'. Specify the security groups for the VPC that is specified in the 'Subnets' field.
	SecurityGroupIds: [...string & =~"[-0-9a-zA-Z]+" & strings.MinRunes(0) & strings.MaxRunes(32)]
	// The ID of the subnets in the VPC to which you want to connect your training job or model. For information about the availability of specific instance types, see https://docs.aws.amazon.com/sagemaker/latest/dg/regions-quotas.html
	Subnets: [...string & =~"[-0-9a-zA-Z]+" & strings.MinRunes(0) & strings.MaxRunes(32)]
}
