package channel

#Properties: {
	ChannelName: #ChannelName
	// The Amazon Resource Name (ARN) of the cluster
	ClusterArn?: string & =~"^arn:[\\w-]+:kafka:[\\w-]+:\\d+:cluster.*\\Z"
	EncryptionConfiguration?: #EncryptionConfiguration
	IcebergDestinationConfiguration?: #IcebergDestinationConfiguration
	LoggingInfo?: #ChannelLoggingInfo
	S3DestinationConfiguration?: #S3DestinationConfiguration
	Tags?: #Tags
	// Topic configuration
	TopicConfigurationList: [...#TopicConfiguration]
}

#Catalog: {
	// The ARN of the catalog
	CatalogArn?: string & =~"^arn:[\\w-]+:glue:[\\w-]+:\\d+:catalog.*\\Z"
	// The warehouse location
	WarehouseLocation?: string
}

#ChannelLoggingInfo: {
	CloudWatchLogs?: #CloudWatchLogsLogDestination
	Firehose?: #FirehoseLogDestination
	S3?: #S3LogDestination
}

#ChannelStateInfo: {
	// Code for channel state
	Code?: string
	// Message for channel state
	Message?: string
}

#CloudWatchLogsLogDestination: {
	// Whether CloudWatch Logs logging is enabled
	Enabled: bool
	// The CloudWatch log group for log delivery
	LogGroup?: string
}

#DeadLetterQueueS3: {
	// The ARN of the S3 bucket
	BucketArn: string & =~"^arn:[\\w-]+:s3:::.*\\Z"
	// The error output prefix
	ErrorOutputPrefix: string
	// Optional 12-digit AWS account ID expected to own the dead-letter S3 bucket
	ExpectedBucketOwner?: string
}

#DestinationTable: {
	// The destination database name
	DestinationDatabaseName: string
	// The destination table name
	DestinationTableName: string
	PartitionSpec?: #PartitionSpec
}

#EncryptionConfiguration: {
	// The ARN of the KMS key for encryption
	KmsKeyArn: string & =~"^arn:[\\w-]+:kms:[\\w-]+:\\d+:key.*\\Z"
}

#FirehoseLogDestination: {
	// The Firehose delivery stream for log delivery
	DeliveryStream?: string
	// Whether Firehose logging is enabled
	Enabled: bool
}

#IcebergDestinationConfiguration: {
	// Append only mode
	AppendOnly: bool
	Catalog?: #Catalog
	CompressionType?: #IcebergCompressionType
	// Data freshness in seconds
	DataFreshnessInSeconds?: int & >=60 & <=900
	DeadLetterQueueS3: #DeadLetterQueueS3
	// List of destination tables
	DestinationTableList: [...#DestinationTable]
	SchemaEvolution: #SchemaEvolution
	// The Amazon Resource Name (ARN) of an IAM role used by MSK to access the table
	ServiceExecutionRoleArn: string & =~"^arn:[\\w-]+:iam::[\\w-]+:role.*\\Z"
	TableCreation: #TableCreation
}

#PartitionSource: {
	// Source name
	SourceName?: string
}

#PartitionSpec: {
	PartitionStrategy: #PartitionStrategy
	// Source list
	SourceList?: [...#PartitionSource]
}

#RecordConverter: {
	ValueConverter: #ValueConverter
}

#RecordSchema: {
	// ARN of Glue Schema Registry resource used for table schema
	GsrArn: string
}

#S3DestinationConfiguration: {
	// Data freshness in seconds
	DataFreshnessInSeconds?: int & >=60 & <=900
	DeadLetterQueueS3: #DeadLetterQueueS3
	// The Amazon Resource Name (ARN) of an IAM role used by MSK to access S3
	ServiceExecutionRoleArn: string & =~"^arn:[\\w-]+:iam::[\\w-]+:role.*\\Z"
	Storage: #S3Storage
}

#S3LogDestination: {
	// The name of the S3 bucket for log delivery
	Bucket?: string
	// Whether S3 logging is enabled
	Enabled: bool
	// The S3 prefix for log delivery
	Prefix?: string
}

#S3Storage: {
	// ARN of the S3 bucket
	BucketArn: string & =~"^arn:[\\w-]+:s3:::.*\\Z"
	CompressionType: #S3CompressionType
	// Optional 12-digit AWS account ID expected to own the S3 bucket
	ExpectedBucketOwner?: string
	// Template for S3 key for output objects, used for partitioning
	OutputKeyTemplate?: string
	// Optional prefix for output objects
	OutputPrefix?: string
	StorageClass: #S3StorageClass
}

#SchemaEvolution: {
	// Whether schema evolution is enabled
	EnableSchemaEvolution: bool
}

#TableCreation: {
	// Whether table creation is enabled
	EnableTableCreation: bool
}

#TopicConfiguration: {
	RecordConverter: #RecordConverter
	RecordSchema?: #RecordSchema
	// The Amazon Resource Name (ARN) that uniquely identifies the topic
	TopicArn: string & =~"^arn:[\\w-]+:kafka:[\\w-]+:\\d+:topic.*\\Z"
}
