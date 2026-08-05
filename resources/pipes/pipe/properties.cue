package pipe

import "strings"

#Properties: {
	Description?: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(512)
	DesiredState?: #RequestedPipeState
	Enrichment?: string & =~"^$|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)$" & strings.MinRunes(0) & strings.MaxRunes(1600)
	EnrichmentParameters?: #PipeEnrichmentParameters
	KmsKeyIdentifier?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	LogConfiguration?: #PipeLogConfiguration
	Name?: string & =~"^[\\.\\-_A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	RoleArn: string & =~"^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z0-9+=,.@\\-_/]+$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	Source: string & =~"^smk://(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9]):[0-9]{1,5}|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	SourceParameters?: #PipeSourceParameters
	Tags?: #TagMap
	Target: string & =~"^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	TargetParameters?: #PipeTargetParameters
}

#AssignPublicIp: "ENABLED" | "DISABLED"

#AwsVpcConfiguration: {
	AssignPublicIp?: #AssignPublicIp
	SecurityGroups?: [...string & =~"^sg-[0-9a-zA-Z]*|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)]
	Subnets: [...string & =~"^subnet-[0-9a-z]*|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(1024)]
}

#BatchArrayProperties: {
	Size?: int & >=2 & <=10000
}

#BatchContainerOverrides: {
	Command?: [...string]
	Environment?: [...#BatchEnvironmentVariable]
	InstanceType?: string
	ResourceRequirements?: [...#BatchResourceRequirement]
}

#BatchEnvironmentVariable: {
	Name?: string
	Value?: string
}

#BatchJobDependency: {
	JobId?: string
	Type?: #BatchJobDependencyType
}

#BatchJobDependencyType: "N_TO_N" | "SEQUENTIAL"

#BatchParametersMap: {...}

#BatchResourceRequirement: {
	Type: #BatchResourceRequirementType
	Value: string
}

#BatchResourceRequirementType: "GPU" | "MEMORY" | "VCPU"

#BatchRetryStrategy: {
	Attempts?: int & >=1 & <=10
}

#CapacityProviderStrategyItem: {
	Base?: int & >=0 & <=100000
	CapacityProvider: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Weight?: int & >=0 & <=1000
}

#CloudwatchLogsLogDestination: {
	LogGroupArn?: string & =~"^(^arn:aws([a-z]|\\-)*:logs:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):log-group:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#DeadLetterConfig: {
	Arn?: string & =~"^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#DimensionMapping: {
	DimensionName: string & strings.MinRunes(1) & strings.MaxRunes(256)
	DimensionValue: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DimensionValueType: #DimensionValueType
}

#DimensionValueType: "VARCHAR"

#DynamoDBStreamStartPosition: "TRIM_HORIZON" | "LATEST"

#EcsContainerOverride: {
	Command?: [...string]
	Cpu?: int
	Environment?: [...#EcsEnvironmentVariable]
	EnvironmentFiles?: [...#EcsEnvironmentFile]
	Memory?: int
	MemoryReservation?: int
	Name?: string
	ResourceRequirements?: [...#EcsResourceRequirement]
}

#EcsEnvironmentFile: {
	Type: #EcsEnvironmentFileType
	Value: string
}

#EcsEnvironmentFileType: "s3"

#EcsEnvironmentVariable: {
	Name?: string
	Value?: string
}

#EcsEphemeralStorage: {
	SizeInGiB: int & >=21 & <=200
}

#EcsInferenceAcceleratorOverride: {
	DeviceName?: string
	DeviceType?: string
}

#EcsResourceRequirement: {
	Type: #EcsResourceRequirementType
	Value: string
}

#EcsResourceRequirementType: "GPU" | "InferenceAccelerator"

#EcsTaskOverride: {
	ContainerOverrides?: [...#EcsContainerOverride]
	Cpu?: string
	EphemeralStorage?: #EcsEphemeralStorage
	ExecutionRoleArn?: string & =~"^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	InferenceAcceleratorOverrides?: [...#EcsInferenceAcceleratorOverride]
	Memory?: string
	TaskRoleArn?: string & =~"^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#EpochTimeUnit: "MILLISECONDS" | "SECONDS" | "MICROSECONDS" | "NANOSECONDS"

#Filter: {
	Pattern?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
}

#FilterCriteria: {
	Filters?: [...#Filter]
}

#FirehoseLogDestination: {
	DeliveryStreamArn?: string & =~"^(^arn:aws([a-z]|\\-)*:firehose:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):deliverystream/.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#HeaderParametersMap: {...}

#IncludeExecutionDataOption: "ALL"

#KinesisStreamStartPosition: "TRIM_HORIZON" | "LATEST" | "AT_TIMESTAMP"

#LaunchType: "EC2" | "FARGATE" | "EXTERNAL"

#LogLevel: "OFF" | "ERROR" | "INFO" | "TRACE"

#MQBrokerAccessCredentials: {
	BasicAuth: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#MSKAccessCredentials: {
	SaslScram512Auth: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
} | {
	ClientCertificateTlsAuth: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#MSKStartPosition: "TRIM_HORIZON" | "LATEST"

#MeasureValueType: "DOUBLE" | "BIGINT" | "VARCHAR" | "BOOLEAN" | "TIMESTAMP"

#MultiMeasureAttributeMapping: {
	MeasureValue: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	MeasureValueType: #MeasureValueType
	MultiMeasureAttributeName: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#MultiMeasureMapping: {
	MultiMeasureAttributeMappings: [...#MultiMeasureAttributeMapping]
	MultiMeasureName: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#NetworkConfiguration: {
	AwsvpcConfiguration?: #AwsVpcConfiguration
}

#OnPartialBatchItemFailureStreams: "AUTOMATIC_BISECT"

#PipeEnrichmentHttpParameters: {
	HeaderParameters?: #HeaderParametersMap
	PathParameterValues?: [...string & =~"^(?!\\s*$).+|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$"]
	QueryStringParameters?: #QueryStringParametersMap
}

#PipeEnrichmentParameters: {
	HttpParameters?: #PipeEnrichmentHttpParameters
	InputTemplate?: string & strings.MinRunes(0) & strings.MaxRunes(8192)
}

#PipeLogConfiguration: {
	CloudwatchLogsLogDestination?: #CloudwatchLogsLogDestination
	FirehoseLogDestination?: #FirehoseLogDestination
	IncludeExecutionData?: [...#IncludeExecutionDataOption]
	Level?: #LogLevel
	S3LogDestination?: #S3LogDestination
}

#PipeSourceActiveMQBrokerParameters: {
	BatchSize?: int & >=1 & <=10000
	Credentials: #MQBrokerAccessCredentials
	MaximumBatchingWindowInSeconds?: int & >=0 & <=300
	QueueName: string & =~"^[\\s\\S]*$" & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#PipeSourceDynamoDBStreamParameters: {
	BatchSize?: int & >=1 & <=10000
	DeadLetterConfig?: #DeadLetterConfig
	MaximumBatchingWindowInSeconds?: int & >=0 & <=300
	MaximumRecordAgeInSeconds?: int & >=-1 & <=604800
	MaximumRetryAttempts?: int & >=-1 & <=10000
	OnPartialBatchItemFailure?: #OnPartialBatchItemFailureStreams
	ParallelizationFactor?: int & >=1 & <=10
	StartingPosition: #DynamoDBStreamStartPosition
}

#PipeSourceKinesisStreamParameters: {
	BatchSize?: int & >=1 & <=10000
	DeadLetterConfig?: #DeadLetterConfig
	MaximumBatchingWindowInSeconds?: int & >=0 & <=300
	MaximumRecordAgeInSeconds?: int & >=-1 & <=604800
	MaximumRetryAttempts?: int & >=-1 & <=10000
	OnPartialBatchItemFailure?: #OnPartialBatchItemFailureStreams
	ParallelizationFactor?: int & >=1 & <=10
	StartingPosition: #KinesisStreamStartPosition
	StartingPositionTimestamp?: string
}

#PipeSourceManagedStreamingKafkaParameters: {
	BatchSize?: int & >=1 & <=10000
	ConsumerGroupID?: string & =~"^[a-zA-Z0-9-\\/*:_+=.@-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Credentials?: #MSKAccessCredentials
	MaximumBatchingWindowInSeconds?: int & >=0 & <=300
	StartingPosition?: #MSKStartPosition
	TopicName: string & =~"^[^.]([a-zA-Z0-9\\-_.]+)$" & strings.MinRunes(1) & strings.MaxRunes(249)
}

#PipeSourceParameters: {
	ActiveMQBrokerParameters?: #PipeSourceActiveMQBrokerParameters
	DynamoDBStreamParameters?: #PipeSourceDynamoDBStreamParameters
	FilterCriteria?: #FilterCriteria
	KinesisStreamParameters?: #PipeSourceKinesisStreamParameters
	ManagedStreamingKafkaParameters?: #PipeSourceManagedStreamingKafkaParameters
	RabbitMQBrokerParameters?: #PipeSourceRabbitMQBrokerParameters
	SelfManagedKafkaParameters?: #PipeSourceSelfManagedKafkaParameters
	SqsQueueParameters?: #PipeSourceSqsQueueParameters
}

#PipeSourceRabbitMQBrokerParameters: {
	BatchSize?: int & >=1 & <=10000
	Credentials: #MQBrokerAccessCredentials
	MaximumBatchingWindowInSeconds?: int & >=0 & <=300
	QueueName: string & =~"^[\\s\\S]*$" & strings.MinRunes(1) & strings.MaxRunes(1000)
	VirtualHost?: string & =~"^[a-zA-Z0-9-\\/*:_+=.@-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
}

#PipeSourceSelfManagedKafkaParameters: {
	AdditionalBootstrapServers?: [...string & =~"^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\\-]*[a-zA-Z0-9])\\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\\-]*[A-Za-z0-9]):[0-9]{1,5}$" & strings.MinRunes(1) & strings.MaxRunes(300)]
	BatchSize?: int & >=1 & <=10000
	ConsumerGroupID?: string & =~"^[a-zA-Z0-9-\\/*:_+=.@-]*$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Credentials?: #SelfManagedKafkaAccessConfigurationCredentials
	MaximumBatchingWindowInSeconds?: int & >=0 & <=300
	// Optional SecretManager ARN which stores the database credentials
	ServerRootCaCertificate?: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	StartingPosition?: #SelfManagedKafkaStartPosition
	TopicName: string & =~"^[^.]([a-zA-Z0-9\\-_.]+)$" & strings.MinRunes(1) & strings.MaxRunes(249)
	Vpc?: #SelfManagedKafkaAccessConfigurationVpc
}

#PipeSourceSqsQueueParameters: {
	BatchSize?: int & >=1 & <=10000
	MaximumBatchingWindowInSeconds?: int & >=0 & <=300
}

#PipeState: "RUNNING" | "STOPPED" | "CREATING" | "UPDATING" | "DELETING" | "STARTING" | "STOPPING" | "CREATE_FAILED" | "UPDATE_FAILED" | "START_FAILED" | "STOP_FAILED" | "DELETE_FAILED" | "CREATE_ROLLBACK_FAILED" | "DELETE_ROLLBACK_FAILED" | "UPDATE_ROLLBACK_FAILED"

#PipeTargetBatchJobParameters: {
	ArrayProperties?: #BatchArrayProperties
	ContainerOverrides?: #BatchContainerOverrides
	DependsOn?: [...#BatchJobDependency]
	JobDefinition: string
	JobName: string
	Parameters?: #BatchParametersMap
	RetryStrategy?: #BatchRetryStrategy
}

#PipeTargetCloudWatchLogsParameters: {
	LogStreamName?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Timestamp?: string & =~"^\\$(\\.[\\w_-]+(\\[(\\d+|\\*)\\])*)*$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#PipeTargetEcsTaskParameters: {
	CapacityProviderStrategy?: [...#CapacityProviderStrategyItem]
	EnableECSManagedTags?: bool
	EnableExecuteCommand?: bool
	Group?: string
	LaunchType?: #LaunchType
	NetworkConfiguration?: #NetworkConfiguration
	Overrides?: #EcsTaskOverride
	PlacementConstraints?: [...#PlacementConstraint]
	PlacementStrategy?: [...#PlacementStrategy]
	PlatformVersion?: string
	PropagateTags?: #PropagateTags
	ReferenceId?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Tags?: [...#Tag]
	TaskCount?: int & >=1
	TaskDefinitionArn: string & =~"^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#PipeTargetEventBridgeEventBusParameters: {
	DetailType?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	EndpointId?: string & =~"^[A-Za-z0-9\\-]+[\\.][A-Za-z0-9\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	Resources?: [...string & =~"^arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-]+):([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1})?:(\\d{12})?:(.+)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(1600)]
	Source?: string & =~"(?=[/\\.\\-_A-Za-z0-9]+)((?!aws\\.).*)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)" & strings.MinRunes(1) & strings.MaxRunes(256)
	Time?: string & =~"^\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#PipeTargetHttpParameters: {
	HeaderParameters?: #HeaderParametersMap
	PathParameterValues?: [...string & =~"^(?!\\s*$).+|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$"]
	QueryStringParameters?: #QueryStringParametersMap
}

#PipeTargetInvocationType: "REQUEST_RESPONSE" | "FIRE_AND_FORGET"

#PipeTargetKinesisStreamParameters: {
	PartitionKey: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#PipeTargetLambdaFunctionParameters: {
	InvocationType?: #PipeTargetInvocationType
}

#PipeTargetParameters: {
	BatchJobParameters?: #PipeTargetBatchJobParameters
	CloudWatchLogsParameters?: #PipeTargetCloudWatchLogsParameters
	EcsTaskParameters?: #PipeTargetEcsTaskParameters
	EventBridgeEventBusParameters?: #PipeTargetEventBridgeEventBusParameters
	HttpParameters?: #PipeTargetHttpParameters
	InputTemplate?: string & strings.MinRunes(0) & strings.MaxRunes(8192)
	KinesisStreamParameters?: #PipeTargetKinesisStreamParameters
	LambdaFunctionParameters?: #PipeTargetLambdaFunctionParameters
	RedshiftDataParameters?: #PipeTargetRedshiftDataParameters
	SageMakerPipelineParameters?: #PipeTargetSageMakerPipelineParameters
	SqsQueueParameters?: #PipeTargetSqsQueueParameters
	StepFunctionStateMachineParameters?: #PipeTargetStateMachineParameters
	TimestreamParameters?: #PipeTargetTimestreamParameters
}

#PipeTargetRedshiftDataParameters: {
	// Redshift Database
	Database: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Database user name
	DbUser?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Optional SecretManager ARN which stores the database credentials
	SecretManagerArn?: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
	// A list of SQLs.
	Sqls: [...string & strings.MinRunes(1) & strings.MaxRunes(100000)]
	// A name for Redshift DataAPI statement which can be used as filter of ListStatement.
	StatementName?: string & strings.MinRunes(1) & strings.MaxRunes(500)
	WithEvent?: bool
}

#PipeTargetSageMakerPipelineParameters: {
	PipelineParameterList?: [...#SageMakerPipelineParameter]
}

#PipeTargetSqsQueueParameters: {
	MessageDeduplicationId?: string & strings.MinRunes(0) & strings.MaxRunes(100)
	MessageGroupId?: string & strings.MinRunes(0) & strings.MaxRunes(100)
}

#PipeTargetStateMachineParameters: {
	InvocationType?: #PipeTargetInvocationType
}

#PipeTargetTimestreamParameters: {
	DimensionMappings: [...#DimensionMapping]
	EpochTimeUnit?: #EpochTimeUnit
	MultiMeasureMappings?: [...#MultiMeasureMapping]
	SingleMeasureMappings?: [...#SingleMeasureMapping]
	TimeFieldType?: #TimeFieldType
	TimeValue: string & strings.MinRunes(1) & strings.MaxRunes(256)
	TimestampFormat?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	VersionValue: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#PlacementConstraint: {
	Expression?: string & strings.MinRunes(0) & strings.MaxRunes(2000)
	Type?: #PlacementConstraintType
}

#PlacementConstraintType: "distinctInstance" | "memberOf"

#PlacementStrategy: {
	Field?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	Type?: #PlacementStrategyType
}

#PlacementStrategyType: "random" | "spread" | "binpack"

#PropagateTags: "TASK_DEFINITION"

#QueryStringParametersMap: {...}

#RequestedPipeState: "RUNNING" | "STOPPED"

#S3LogDestination: {
	BucketName?: string
	BucketOwner?: string
	OutputFormat?: #S3OutputFormat
	Prefix?: string
}

#S3OutputFormat: "json" | "plain" | "w3c"

#SageMakerPipelineParameter: {
	Name: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*|(\\$(\\.[\\w/_-]+(\\[(\\d+|\\*)\\])*)*)$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#SelfManagedKafkaAccessConfigurationCredentials: {
	BasicAuth: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
} | {
	SaslScram512Auth: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
} | {
	SaslScram256Auth: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
} | {
	ClientCertificateTlsAuth: string & =~"^(^arn:aws([a-z]|\\-)*:secretsmanager:([a-z]{2}((-gov)|(-iso([a-z]?)))?-[a-z]+-\\d{1}):(\\d{12}):secret:.+)$" & strings.MinRunes(1) & strings.MaxRunes(1600)
}

#SelfManagedKafkaAccessConfigurationVpc: {
	// List of SecurityGroupId.
	SecurityGroup?: [...string & =~"^sg-[0-9a-zA-Z]*$" & strings.MinRunes(1) & strings.MaxRunes(1024)]
	// List of SubnetId.
	Subnets?: [...string & =~"^subnet-[0-9a-z]*$" & strings.MinRunes(1) & strings.MaxRunes(1024)]
}

#SelfManagedKafkaStartPosition: "TRIM_HORIZON" | "LATEST"

#SingleMeasureMapping: {
	MeasureName: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	MeasureValue: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	MeasureValueType: #MeasureValueType
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagMap: {...}

#TimeFieldType: "EPOCH" | "TIMESTAMP_FORMAT"
