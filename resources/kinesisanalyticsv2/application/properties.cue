package application

import "strings"

#Properties: {
	// Use this parameter to configure the application.
	ApplicationConfiguration?: #ApplicationConfiguration
	// The description of the application.
	ApplicationDescription?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// Used to configure start of maintenance window.
	ApplicationMaintenanceConfiguration?: #ApplicationMaintenanceConfiguration
	// To create a Kinesis Data Analytics Studio notebook, you must set the mode to `INTERACTIVE`. However, for a Kinesis Data Analytics for Apache Flink application, the mode is optional.
	ApplicationMode?: "INTERACTIVE" | "STREAMING"
	// The name of the application.
	ApplicationName?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Specifies run configuration (start parameters) of a Kinesis Data Analytics application. Evaluated on update for RUNNING applications an only.
	RunConfiguration?: #RunConfiguration
	// The runtime environment for the application.
	RuntimeEnvironment: string
	// Specifies the IAM role that the application uses to access external resources.
	ServiceExecutionRole: #Arn
	// A list of one or more tags to assign to the application. A tag is a key-value pair that identifies an application. Note that the maximum number of application tags includes system tags. The maximum number of user-defined application tags is 50.
	Tags?: [...#Tag]
}

#ApplicationCodeConfiguration: {
	// The location and type of the application code.
	CodeContent: #CodeContent
	// Specifies whether the code content is in text or zip format.
	CodeContentType: "PLAINTEXT" | "ZIPFILE"
}

#ApplicationConfiguration: {
	// The code location and type parameters for a Flink-based Kinesis Data Analytics application.
	ApplicationCodeConfiguration?: #ApplicationCodeConfiguration
	// Describes whether customer managed key is enabled and key details for customer data encryption
	ApplicationEncryptionConfiguration?: #ApplicationEncryptionConfiguration
	// Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.
	ApplicationSnapshotConfiguration?: #ApplicationSnapshotConfiguration
	// Describes whether system initiated rollbacks are enabled for a Flink-based Kinesis Data Analytics application.
	ApplicationSystemRollbackConfiguration?: #ApplicationSystemRollbackConfiguration
	// Describes execution properties for a Flink-based Kinesis Data Analytics application.
	EnvironmentProperties?: #EnvironmentProperties
	// The creation and update parameters for a Flink-based Kinesis Data Analytics application.
	FlinkApplicationConfiguration?: #FlinkApplicationConfiguration
	// The creation and update parameters for a SQL-based Kinesis Data Analytics application.
	SqlApplicationConfiguration?: #SqlApplicationConfiguration
	// The array of descriptions of VPC configurations available to the application.
	VpcConfigurations?: #VpcConfigurations
	// The configuration parameters for a Kinesis Data Analytics Studio notebook.
	ZeppelinApplicationConfiguration?: #ZeppelinApplicationConfiguration
}

#ApplicationEncryptionConfiguration: {
	// KMS KeyId. Can be either key uuid or full key arn or key alias arn or short key alias
	KeyId?: string & =~"^(?:arn:.*:kms:.*:.*:(?:key\\/.*|alias\\/.*)|alias\\/.*|(?i)[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Specifies whether application data is encrypted using service key: AWS_OWNED_KEY or customer key: CUSTOMER_MANAGED_KEY
	KeyType: "AWS_OWNED_KEY" | "CUSTOMER_MANAGED_KEY"
}

#ApplicationMaintenanceConfiguration: {
	// The start time for the maintenance window.
	ApplicationMaintenanceWindowStartTime: string & =~"^([01][0-9]|2[0-3]):[0-5][0-9]$"
}

#ApplicationRestoreConfiguration: {
	// Specifies how the application should be restored.
	ApplicationRestoreType: "SKIP_RESTORE_FROM_SNAPSHOT" | "RESTORE_FROM_LATEST_SNAPSHOT" | "RESTORE_FROM_CUSTOM_SNAPSHOT"
	// The identifier of an existing snapshot of application state to use to restart an application. The application uses this value if RESTORE_FROM_CUSTOM_SNAPSHOT is specified for the ApplicationRestoreType.
	SnapshotName?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#ApplicationSnapshotConfiguration: {
	// Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.
	SnapshotsEnabled: bool
}

#ApplicationSystemRollbackConfiguration: {
	// Describes whether system initiated rollbacks are enabled for a Flink-based Kinesis Data Analytics application.
	RollbackEnabled: bool
}

#Arn: string & =~"^arn:.*$" & strings.MinRunes(1) & strings.MaxRunes(2048)

#CSVMappingParameters: {
	// The column delimiter. For example, in a CSV format, a comma (",") is the typical column delimiter.
	RecordColumnDelimiter: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The row delimiter. For example, in a CSV format, '\n' is the typical row delimiter.
	RecordRowDelimiter: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#CatalogConfiguration: {
	// The configuration parameters for the default Amazon Glue database. You use this database for Apache Flink SQL queries and table API transforms that you write in a Kinesis Data Analytics Studio notebook.
	GlueDataCatalogConfiguration?: #GlueDataCatalogConfiguration
}

#CheckpointConfiguration: {
	// Describes the interval in milliseconds between checkpoint operations.
	CheckpointInterval?: int & >=1 & <=9223372036854775807
	// Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application.
	CheckpointingEnabled?: bool
	// Describes whether the application uses Kinesis Data Analytics' default checkpointing behavior. You must set this property to `CUSTOM` in order to set the `CheckpointingEnabled`, `CheckpointInterval`, or `MinPauseBetweenCheckpoints` parameters.
	ConfigurationType: "DEFAULT" | "CUSTOM"
	// Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start. If a checkpoint operation takes longer than the CheckpointInterval, the application otherwise performs continual checkpoint operations. For more information, see Tuning Checkpointing in the Apache Flink Documentation.
	MinPauseBetweenCheckpoints?: int & >=0 & <=9223372036854775807
}

#CodeContent: {
	// Information about the Amazon S3 bucket that contains the application code.
	S3ContentLocation?: #S3ContentLocation
	// The text-format code for a Flink-based Kinesis Data Analytics application.
	TextContent?: string & strings.MinRunes(1) & strings.MaxRunes(102400)
	// The zip-format code for a Flink-based Kinesis Data Analytics application.
	ZipFileContent?: string
}

#CustomArtifactConfiguration: {
	// Set this to either `UDF` or `DEPENDENCY_JAR`. `UDF` stands for user-defined functions. This type of artifact must be in an S3 bucket. A `DEPENDENCY_JAR` can be in either Maven or an S3 bucket.
	ArtifactType: "DEPENDENCY_JAR" | "UDF"
	// The parameters required to fully specify a Maven reference.
	MavenReference?: #MavenReference
	// The location of the custom artifacts.
	S3ContentLocation?: #S3ContentLocation
}

#CustomArtifactsConfiguration: [...#CustomArtifactConfiguration]

#DeployAsApplicationConfiguration: {
	// The description of an Amazon S3 object that contains the Amazon Data Analytics application, including the Amazon Resource Name (ARN) of the S3 bucket, the name of the Amazon S3 object that contains the data, and the version number of the Amazon S3 object that contains the data.
	S3ContentLocation: #S3ContentBaseLocation
}

#EnvironmentProperties: {
	// Describes the execution property groups.
	PropertyGroups?: [...#PropertyGroup]
}

#FlinkApplicationConfiguration: {
	// Describes an application's checkpointing configuration. Checkpointing is the process of persisting application state for fault tolerance. For more information, see Checkpoints for Fault Tolerance in the Apache Flink Documentation.
	CheckpointConfiguration?: #CheckpointConfiguration
	// Describes configuration parameters for Amazon CloudWatch logging for an application.
	MonitoringConfiguration?: #MonitoringConfiguration
	// Describes parameters for how an application executes multiple tasks simultaneously.
	ParallelismConfiguration?: #ParallelismConfiguration
}

#FlinkRunConfiguration: {
	// When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. Defaults to false. If you update your application without specifying this parameter, AllowNonRestoredState will be set to false, even if it was previously set to true.
	AllowNonRestoredState?: bool
}

#GlueDataCatalogConfiguration: {
	// The Amazon Resource Name (ARN) of the database.
	DatabaseARN?: #Arn
}

#Input: {
	// Describes the number of in-application streams to create.
	InputParallelism?: #InputParallelism
	// The InputProcessingConfiguration for the input. An input processor transforms records as they are received from the stream, before the application's SQL code executes. Currently, the only input processing configuration available is InputLambdaProcessor.
	InputProcessingConfiguration?: #InputProcessingConfiguration
	// Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created.
	InputSchema: #InputSchema
	// If the streaming source is an Amazon Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN.
	KinesisFirehoseInput?: #KinesisFirehoseInput
	// If the streaming source is an Amazon Kinesis data stream, identifies the stream's Amazon Resource Name (ARN).
	KinesisStreamsInput?: #KinesisStreamsInput
	// The name prefix to use when creating an in-application stream. Suppose that you specify a prefix `"MyInApplicationStream"`. Kinesis Data Analytics then creates one or more (as per the InputParallelism count you specified) in-application streams with the names `"MyInApplicationStream_001"`, `"MyInApplicationStream_002"`, and so on.
	NamePrefix: string & =~"^[^-\\s<>&]*$" & strings.MinRunes(1) & strings.MaxRunes(32)
}

#InputLambdaProcessor: {
	// The ARN of the Amazon Lambda function that operates on records in the stream.
	ResourceARN: #Arn
}

#InputParallelism: {
	// The number of in-application streams to create.
	Count?: int & >=1 & <=64
}

#InputProcessingConfiguration: {
	// The InputLambdaProcessor that is used to preprocess the records in the stream before being processed by your application code.
	InputLambdaProcessor?: #InputLambdaProcessor
}

#InputSchema: {
	// A list of `RecordColumn` objects.
	RecordColumns: [...#RecordColumn]
	// Specifies the encoding of the records in the streaming source. For example, UTF-8.
	RecordEncoding?: "UTF-8"
	// Specifies the format of the records on the streaming source.
	RecordFormat: #RecordFormat
}

#JSONMappingParameters: {
	// The path to the top-level parent that contains the records.
	RecordRowPath: string & =~"^(?=^\\$)(?=^\\S+$).*$" & strings.MinRunes(1) & strings.MaxRunes(65535)
}

#KinesisFirehoseInput: {
	// The Amazon Resource Name (ARN) of the delivery stream.
	ResourceARN: #Arn
}

#KinesisStreamsInput: {
	// The ARN of the input Kinesis data stream to read.
	ResourceARN: #Arn
}

#MappingParameters: {
	// Provides additional mapping information when the record format uses delimiters (for example, CSV).
	CSVMappingParameters?: #CSVMappingParameters
	// Provides additional mapping information when JSON is the record format on the streaming source.
	JSONMappingParameters?: #JSONMappingParameters
}

#MavenReference: {
	// The artifact ID of the Maven reference.
	ArtifactId: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The group ID of the Maven reference.
	GroupId: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The version of the Maven reference.
	Version: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#MonitoringConfiguration: {
	// Describes whether to use the default CloudWatch logging configuration for an application. You must set this property to CUSTOM in order to set the LogLevel or MetricsLevel parameters.
	ConfigurationType: "DEFAULT" | "CUSTOM"
	// Describes the verbosity of the CloudWatch Logs for an application.
	LogLevel?: "DEBUG" | "INFO" | "WARN" | "ERROR"
	// Describes the granularity of the CloudWatch Logs for an application. The Parallelism level is not recommended for applications with a Parallelism over 64 due to excessive costs.
	MetricsLevel?: "APPLICATION" | "OPERATOR" | "PARALLELISM" | "TASK"
}

#ParallelismConfiguration: {
	// Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.
	AutoScalingEnabled?: bool
	// Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. You must set this property to `CUSTOM` in order to change your application's `AutoScalingEnabled`, `Parallelism`, or `ParallelismPerKPU` properties.
	ConfigurationType: "CUSTOM" | "DEFAULT"
	// Describes the initial number of parallel tasks that a Java-based Kinesis Data Analytics application can perform. The Kinesis Data Analytics service can increase this number automatically if ParallelismConfiguration:AutoScalingEnabled is set to true.
	Parallelism?: int & >=1
	// Describes the number of parallel tasks that a Java-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application. For more information about KPUs, see Amazon Kinesis Data Analytics Pricing.
	ParallelismPerKPU?: int & >=1
}

#PropertyGroup: {
	// Describes the key of an application execution property key-value pair.
	PropertyGroupId?: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	// Describes the value of an application execution property key-value pair.
	PropertyMap?: {...}
}

#RecordColumn: {
	// A reference to the data element in the streaming input or the reference data source.
	Mapping?: string & strings.MinRunes(1) & strings.MaxRunes(65535)
	// The name of the column that is created in the in-application input stream or reference table.
	Name: string & =~"^[^-\\s<>&]*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The type of column created in the in-application input stream or reference table.
	SqlType: string & strings.MinRunes(1) & strings.MaxRunes(100)
}

#RecordFormat: {
	// When you configure application input at the time of creating or updating an application, provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source.
	MappingParameters?: #MappingParameters
	// The type of record format.
	RecordFormatType: "CSV" | "JSON"
}

#RunConfiguration: {
	// Describes the restore behavior of a restarting application.
	ApplicationRestoreConfiguration?: #ApplicationRestoreConfiguration
	// Describes the starting parameters for a Flink-based Kinesis Data Analytics application.
	FlinkRunConfiguration?: #FlinkRunConfiguration
}

#S3ContentBaseLocation: {
	// The base path for the S3 bucket.
	BasePath?: string & =~"^[a-zA-Z0-9/!-_.*'()]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The Amazon Resource Name (ARN) of the S3 bucket.
	BucketARN: #Arn
}

#S3ContentLocation: {
	// The Amazon Resource Name (ARN) for the S3 bucket containing the application code.
	BucketARN: #Arn
	// The file key for the object containing the application code.
	FileKey: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The version of the object containing the application code.
	ObjectVersion?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#SqlApplicationConfiguration: {
	// The array of Input objects describing the input streams used by the application.
	Inputs?: [...#Input]
}

#Tag: {
	// The key name of the tag. You can specify a value that's 1 to 128 Unicode characters in length and can't be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that's 0 to 256 characters in length.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcConfiguration: {
	// The array of SecurityGroup IDs used by the VPC configuration.
	SecurityGroupIds: [...string]
	// The array of Subnet IDs used by the VPC configuration.
	SubnetIds: [...string]
}

#VpcConfigurations: [...#VpcConfiguration]

#ZeppelinApplicationConfiguration: {
	// The Amazon Glue Data Catalog that you use in queries in a Kinesis Data Analytics Studio notebook.
	CatalogConfiguration?: #CatalogConfiguration
	// A list of CustomArtifactConfiguration objects.
	CustomArtifactsConfiguration?: #CustomArtifactsConfiguration
	// The information required to deploy a Kinesis Data Analytics Studio notebook as an application with durable state.
	DeployAsApplicationConfiguration?: #DeployAsApplicationConfiguration
	// The monitoring configuration of a Kinesis Data Analytics Studio notebook.
	MonitoringConfiguration?: #ZeppelinMonitoringConfiguration
}

#ZeppelinMonitoringConfiguration: {
	// The verbosity of the CloudWatch Logs for an application. You can set it to `INFO`, `WARN`, `ERROR`, or `DEBUG`.
	LogLevel?: "DEBUG" | "INFO" | "WARN" | "ERROR"
}
