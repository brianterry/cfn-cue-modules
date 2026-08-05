package deliverystream

import "strings"

#Properties: {
	AmazonOpenSearchServerlessDestinationConfiguration?: #AmazonOpenSearchServerlessDestinationConfiguration
	AmazonopensearchserviceDestinationConfiguration?: #AmazonopensearchserviceDestinationConfiguration
	DatabaseSourceConfiguration?: #DatabaseSourceConfiguration
	DeliveryStreamEncryptionConfigurationInput?: #DeliveryStreamEncryptionConfigurationInput
	DeliveryStreamName?: string & =~"[a-zA-Z0-9._-]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	DeliveryStreamType?: "DatabaseAsSource" | "DirectPut" | "KinesisStreamAsSource" | "MSKAsSource"
	DirectPutSourceConfiguration?: #DirectPutSourceConfiguration
	ElasticsearchDestinationConfiguration?: #ElasticsearchDestinationConfiguration
	ExtendedS3DestinationConfiguration?: #ExtendedS3DestinationConfiguration
	HttpEndpointDestinationConfiguration?: #HttpEndpointDestinationConfiguration
	IcebergDestinationConfiguration?: #IcebergDestinationConfiguration
	KinesisStreamSourceConfiguration?: #KinesisStreamSourceConfiguration
	MSKSourceConfiguration?: #MSKSourceConfiguration
	RedshiftDestinationConfiguration?: #RedshiftDestinationConfiguration
	S3DestinationConfiguration?: #S3DestinationConfiguration
	SnowflakeDestinationConfiguration?: #SnowflakeDestinationConfiguration
	SplunkDestinationConfiguration?: #SplunkDestinationConfiguration
	Tags?: [...#Tag]
}

#AmazonOpenSearchServerlessBufferingHints: {
	IntervalInSeconds?: int
	SizeInMBs?: int
}

#AmazonOpenSearchServerlessDestinationConfiguration: {
	BufferingHints?: #AmazonOpenSearchServerlessBufferingHints
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	CollectionEndpoint?: string & =~"https:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	IndexName: string & strings.MinRunes(1) & strings.MaxRunes(80)
	ProcessingConfiguration?: #ProcessingConfiguration
	RetryOptions?: #AmazonOpenSearchServerlessRetryOptions
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3BackupMode?: "FailedDocumentsOnly" | "AllDocuments"
	S3Configuration: #S3DestinationConfiguration
	VpcConfiguration?: #VpcConfiguration
}

#AmazonOpenSearchServerlessRetryOptions: {
	DurationInSeconds?: int
}

#AmazonopensearchserviceBufferingHints: {
	IntervalInSeconds?: int
	SizeInMBs?: int
}

#AmazonopensearchserviceDestinationConfiguration: {
	BufferingHints?: #AmazonopensearchserviceBufferingHints
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	ClusterEndpoint?: string & =~"https:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	DocumentIdOptions?: #DocumentIdOptions
	DomainARN?: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	IndexName: string & strings.MinRunes(1) & strings.MaxRunes(80)
	IndexRotationPeriod?: "NoRotation" | "OneHour" | "OneDay" | "OneWeek" | "OneMonth"
	ProcessingConfiguration?: #ProcessingConfiguration
	RetryOptions?: #AmazonopensearchserviceRetryOptions
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3BackupMode?: "FailedDocumentsOnly" | "AllDocuments"
	S3Configuration: #S3DestinationConfiguration
	TypeName?: string & strings.MinRunes(0) & strings.MaxRunes(100)
	VpcConfiguration?: #VpcConfiguration
}

#AmazonopensearchserviceRetryOptions: {
	DurationInSeconds?: int
}

#AuthenticationConfiguration: {
	Connectivity: "PUBLIC" | "PRIVATE"
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#BufferingHints: {
	IntervalInSeconds?: int
	SizeInMBs?: int
}

#CatalogConfiguration: {
	CatalogArn?: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	WarehouseLocation?: string & =~"s3:\\/\\/.*" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#CloudWatchLoggingOptions: {
	Enabled?: bool
	LogGroupName?: string
	LogStreamName?: string
}

#CopyCommand: {
	CopyOptions?: string & strings.MinRunes(0) & strings.MaxRunes(204800)
	DataTableColumns?: string & strings.MinRunes(0) & strings.MaxRunes(204800)
	DataTableName: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#DataFormatConversionConfiguration: {
	Enabled?: bool
	InputFormatConfiguration?: #InputFormatConfiguration
	OutputFormatConfiguration?: #OutputFormatConfiguration
	SchemaConfiguration?: #SchemaConfiguration
}

#DatabaseColumns: {
	Exclude?: [...#DatabaseColumnName]
	Include?: [...#DatabaseColumnName]
}

#DatabaseSourceAuthenticationConfiguration: {
	SecretsManagerConfiguration: #SecretsManagerConfiguration
}

#DatabaseSourceConfiguration: {
	Columns?: #DatabaseColumns
	DatabaseSourceAuthenticationConfiguration: #DatabaseSourceAuthenticationConfiguration
	DatabaseSourceVPCConfiguration: #DatabaseSourceVPCConfiguration
	Databases: #Databases
	Digest?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(512)
	Endpoint: string & =~"^(?!\\s*$).+" & strings.MinRunes(1) & strings.MaxRunes(255)
	Port: int & >=0 & <=65535
	PublicCertificate?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(4096)
	SSLMode?: "Disabled" | "Enabled"
	SnapshotWatermarkTable: #DatabaseTableName
	SurrogateKeys?: [...string & =~"^\\S+$" & strings.MinRunes(1) & strings.MaxRunes(1024)]
	Tables: #DatabaseTables
	Type: "MySQL" | "PostgreSQL"
}

#DatabaseSourceVPCConfiguration: {
	VpcEndpointServiceName: #VpcEndpointServiceName
}

#DatabaseTables: {
	Exclude?: [...#DatabaseTableName]
	Include?: [...#DatabaseTableName]
}

#Databases: {
	Exclude?: [...#DatabaseName]
	Include?: [...#DatabaseName]
}

#DeliveryStreamEncryptionConfigurationInput: {
	KeyARN?: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	KeyType: "AWS_OWNED_CMK" | "CUSTOMER_MANAGED_CMK"
}

#Deserializer: {
	HiveJsonSerDe?: #HiveJsonSerDe
	OpenXJsonSerDe?: #OpenXJsonSerDe
}

#DestinationTableConfiguration: {
	DestinationDatabaseName: string & strings.MinRunes(1) & strings.MaxRunes(512)
	DestinationTableName: string & strings.MinRunes(1) & strings.MaxRunes(512)
	PartitionSpec?: {
		Identity?: [...#PartitionField]
	}
	S3ErrorOutputPrefix?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	UniqueKeys?: [...#UniqueKey]
}

#DirectPutSourceConfiguration: {
	ThroughputHintInMBs?: int & >=1 & <=100
}

#DocumentIdOptions: {
	DefaultDocumentIdFormat: "FIREHOSE_DEFAULT" | "NO_DOCUMENT_ID"
}

#DynamicPartitioningConfiguration: {
	Enabled?: bool
	RetryOptions?: #RetryOptions
}

#ElasticsearchBufferingHints: {
	IntervalInSeconds?: int
	SizeInMBs?: int
}

#ElasticsearchDestinationConfiguration: {
	BufferingHints?: #ElasticsearchBufferingHints
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	ClusterEndpoint?: string & =~"https:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	DocumentIdOptions?: #DocumentIdOptions
	DomainARN?: string | string
	IndexName: string & strings.MinRunes(1) & strings.MaxRunes(80)
	IndexRotationPeriod?: "NoRotation" | "OneHour" | "OneDay" | "OneWeek" | "OneMonth"
	ProcessingConfiguration?: #ProcessingConfiguration
	RetryOptions?: #ElasticsearchRetryOptions
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3BackupMode?: "FailedDocumentsOnly" | "AllDocuments"
	S3Configuration: #S3DestinationConfiguration
	TypeName?: string & strings.MinRunes(0) & strings.MaxRunes(100)
	VpcConfiguration?: #VpcConfiguration
}

#ElasticsearchRetryOptions: {
	DurationInSeconds?: int
}

#EncryptionConfiguration: {
	KMSEncryptionConfig?: #KMSEncryptionConfig
	NoEncryptionConfig?: "NoEncryption"
}

#ExtendedS3DestinationConfiguration: {
	BucketARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(2048)
	BufferingHints?: #BufferingHints
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	CompressionFormat?: "UNCOMPRESSED" | "GZIP" | "ZIP" | "Snappy" | "HADOOP_SNAPPY"
	CustomTimeZone?: string & strings.MinRunes(0) & strings.MaxRunes(50)
	DataFormatConversionConfiguration?: #DataFormatConversionConfiguration
	DynamicPartitioningConfiguration?: #DynamicPartitioningConfiguration
	EncryptionConfiguration?: #EncryptionConfiguration
	ErrorOutputPrefix?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	FileExtension?: string & =~"^$|\\.[0-9a-z!\\-_.*'()]+" & strings.MinRunes(0) & strings.MaxRunes(128)
	Prefix?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	ProcessingConfiguration?: #ProcessingConfiguration
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3BackupConfiguration?: #S3DestinationConfiguration
	S3BackupMode?: "Disabled" | "Enabled"
}

#HiveJsonSerDe: {
	TimestampFormats?: [...string]
}

#HttpEndpointCommonAttribute: {
	AttributeName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	AttributeValue: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#HttpEndpointConfiguration: {
	AccessKey?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Url: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#HttpEndpointDestinationConfiguration: {
	BufferingHints?: #BufferingHints
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	EndpointConfiguration: #HttpEndpointConfiguration
	ProcessingConfiguration?: #ProcessingConfiguration
	RequestConfiguration?: #HttpEndpointRequestConfiguration
	RetryOptions?: #RetryOptions
	RoleARN?: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3BackupMode?: string
	S3Configuration: #S3DestinationConfiguration
	SecretsManagerConfiguration?: #SecretsManagerConfiguration
}

#HttpEndpointRequestConfiguration: {
	CommonAttributes?: [...#HttpEndpointCommonAttribute]
	ContentEncoding?: "NONE" | "GZIP"
}

#IcebergDestinationConfiguration: {
	AppendOnly?: bool
	BufferingHints?: #BufferingHints
	CatalogConfiguration: #CatalogConfiguration
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	DestinationTableConfigurationList?: #DestinationTableConfigurationList
	ProcessingConfiguration?: #ProcessingConfiguration
	RetryOptions?: #RetryOptions
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3Configuration: #S3DestinationConfiguration
	SchemaEvolutionConfiguration?: #SchemaEvolutionConfiguration
	TableCreationConfiguration?: #TableCreationConfiguration
	s3BackupMode?: "AllData" | "FailedDataOnly"
}

#InputFormatConfiguration: {
	Deserializer?: #Deserializer
}

#KMSEncryptionConfig: {
	AWSKMSKeyARN: string
}

#KinesisStreamSourceConfiguration: {
	KinesisStreamARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#MSKSourceConfiguration: {
	AuthenticationConfiguration: #AuthenticationConfiguration
	MSKClusterARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	ReadFromTimestamp?: string
	TopicName: string & =~"[a-zA-Z0-9\\._\\-]+" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#OpenXJsonSerDe: {
	CaseInsensitive?: bool
	ColumnToJsonKeyMappings?: {...}
	ConvertDotsInJsonKeysToUnderscores?: bool
}

#OrcSerDe: {
	BlockSizeBytes?: int
	BloomFilterColumns?: [...string]
	BloomFilterFalsePositiveProbability?: number
	Compression?: string
	DictionaryKeyThreshold?: number
	EnablePadding?: bool
	FormatVersion?: string
	PaddingTolerance?: number
	RowIndexStride?: int
	StripeSizeBytes?: int
}

#OutputFormatConfiguration: {
	Serializer?: #Serializer
}

#ParquetSerDe: {
	BlockSizeBytes?: int
	Compression?: string
	EnableDictionaryCompression?: bool
	MaxPaddingBytes?: int
	PageSizeBytes?: int
	WriterVersion?: string
}

#PartitionField: {
	SourceName: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#ProcessingConfiguration: {
	Enabled?: bool
	Processors?: [...#Processor]
}

#Processor: {
	Parameters?: [...#ProcessorParameter]
	Type: "RecordDeAggregation" | "Decompression" | "CloudWatchLogProcessing" | "Lambda" | "MetadataExtraction" | "AppendDelimiterToRecord"
}

#ProcessorParameter: {
	ParameterName: string
	ParameterValue: string | string | string
}

#RedshiftDestinationConfiguration: {
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	ClusterJDBCURL: string & strings.MinRunes(1) & strings.MaxRunes(512)
	CopyCommand: #CopyCommand
	Password?: string & strings.MinRunes(6) & strings.MaxRunes(512)
	ProcessingConfiguration?: #ProcessingConfiguration
	RetryOptions?: #RedshiftRetryOptions
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3BackupConfiguration?: #S3DestinationConfiguration
	S3BackupMode?: "Disabled" | "Enabled"
	S3Configuration: #S3DestinationConfiguration
	SecretsManagerConfiguration?: #SecretsManagerConfiguration
	Username?: string & strings.MinRunes(1) & strings.MaxRunes(512)
}

#RedshiftRetryOptions: {
	DurationInSeconds?: int
}

#RetryOptions: {
	DurationInSeconds?: int
}

#S3DestinationConfiguration: {
	BucketARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(2048)
	BufferingHints?: #BufferingHints
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	CompressionFormat?: "UNCOMPRESSED" | "GZIP" | "ZIP" | "Snappy" | "HADOOP_SNAPPY"
	EncryptionConfiguration?: #EncryptionConfiguration
	ErrorOutputPrefix?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Prefix?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#SchemaConfiguration: {
	CatalogId?: string
	DatabaseName?: string
	Region?: string
	RoleARN?: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	TableName?: string
	VersionId?: string
}

#SchemaEvolutionConfiguration: {
	Enabled?: bool
}

#SecretsManagerConfiguration: {
	Enabled: bool
	RoleARN?: string & =~"arn:.*:iam::\\d{12}:role/[a-zA-Z_0-9+=,.@\\-_/]+" & strings.MinRunes(1) & strings.MaxRunes(512)
	SecretARN?: string & =~"arn:.*:secretsmanager:[a-zA-Z0-9\\-]+:\\d{12}:secret:[a-zA-Z0-9\\-/_+=.@]+" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Serializer: {
	OrcSerDe?: #OrcSerDe
	ParquetSerDe?: #ParquetSerDe
}

#SnowflakeBufferingHints: {
	IntervalInSeconds?: int
	SizeInMBs?: int
}

#SnowflakeDestinationConfiguration: {
	AccountUrl: string & =~".+?\\.snowflakecomputing\\.com" & strings.MinRunes(24) & strings.MaxRunes(2048)
	BufferingHints?: #SnowflakeBufferingHints
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	ContentColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	DataLoadingOption?: "JSON_MAPPING" | "VARIANT_CONTENT_MAPPING" | "VARIANT_CONTENT_AND_METADATA_MAPPING"
	Database: string & strings.MinRunes(1) & strings.MaxRunes(255)
	KeyPassphrase?: string & strings.MinRunes(7) & strings.MaxRunes(255)
	MetaDataColumnName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	PrivateKey?: string & =~"^(?:[A-Za-z0-9+\\/]{4})*(?:[A-Za-z0-9+\\/]{2}==|[A-Za-z0-9+\\/]{3}=)?$" & strings.MinRunes(256) & strings.MaxRunes(4096)
	ProcessingConfiguration?: #ProcessingConfiguration
	RetryOptions?: #SnowflakeRetryOptions
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3BackupMode?: "FailedDataOnly" | "AllData"
	S3Configuration: #S3DestinationConfiguration
	Schema: string & strings.MinRunes(1) & strings.MaxRunes(255)
	SecretsManagerConfiguration?: #SecretsManagerConfiguration
	SnowflakeRoleConfiguration?: #SnowflakeRoleConfiguration
	SnowflakeVpcConfiguration?: #SnowflakeVpcConfiguration
	Table: string & strings.MinRunes(1) & strings.MaxRunes(255)
	User?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#SnowflakeRetryOptions: {
	DurationInSeconds?: int
}

#SnowflakeRoleConfiguration: {
	Enabled?: bool
	SnowflakeRole?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#SnowflakeVpcConfiguration: {
	PrivateLinkVpceId: string & =~"([a-zA-Z0-9\\-\\_]+\\.){2,3}vpce\\.[a-zA-Z0-9\\-]*\\.vpce-svc\\-[a-zA-Z0-9\\-]{17}$" & strings.MinRunes(47) & strings.MaxRunes(255)
}

#SplunkBufferingHints: {
	IntervalInSeconds?: int
	SizeInMBs?: int
}

#SplunkDestinationConfiguration: {
	BufferingHints?: #SplunkBufferingHints
	CloudWatchLoggingOptions?: #CloudWatchLoggingOptions
	HECAcknowledgmentTimeoutInSeconds?: int & >=180 & <=600
	HECEndpoint: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	HECEndpointType: "Raw" | "Event"
	HECToken?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	ProcessingConfiguration?: #ProcessingConfiguration
	RetryOptions?: #SplunkRetryOptions
	S3BackupMode?: string
	S3Configuration: #S3DestinationConfiguration
	SecretsManagerConfiguration?: #SecretsManagerConfiguration
}

#SplunkRetryOptions: {
	DurationInSeconds?: int
}

#TableCreationConfiguration: {
	Enabled?: bool
}

#Tag: {
	Key: string & =~"^(?!aws:)[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@%]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & =~"^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@%]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcConfiguration: {
	RoleARN: string & =~"arn:.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	SecurityGroupIds: [...string & strings.MinRunes(1) & strings.MaxRunes(1024)]
	SubnetIds: [...string & strings.MinRunes(1) & strings.MaxRunes(1024)]
}
