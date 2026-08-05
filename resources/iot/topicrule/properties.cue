package topicrule

import "strings"

#Properties: {
	RuleName?: string
	Tags?: [...#Tag]
	TopicRulePayload: #TopicRulePayload
}

#Action: {
	CloudwatchAlarm?: #CloudwatchAlarmAction
	CloudwatchLogs?: #CloudwatchLogsAction
	CloudwatchMetric?: #CloudwatchMetricAction
	DynamoDB?: #DynamoDBAction
	DynamoDBv2?: #DynamoDBv2Action
	Elasticsearch?: #ElasticsearchAction
	Firehose?: #FirehoseAction
	Http?: #HttpAction
	IotAnalytics?: #IotAnalyticsAction
	IotEvents?: #IotEventsAction
	IotSiteWise?: #IotSiteWiseAction
	Kafka?: #KafkaAction
	Kinesis?: #KinesisAction
	Lambda?: #LambdaAction
	Location?: #LocationAction
	OpenSearch?: #OpenSearchAction
	Republish?: #RepublishAction
	S3?: #S3Action
	Sns?: #SnsAction
	Sqs?: #SqsAction
	StepFunctions?: #StepFunctionsAction
	Timestream?: #TimestreamAction
}

#AssetPropertyTimestamp: {
	OffsetInNanos?: string
	TimeInSeconds: string
}

#AssetPropertyValue: {
	Quality?: string
	Timestamp: #AssetPropertyTimestamp
	Value: #AssetPropertyVariant
}

#AssetPropertyVariant: {
	BooleanValue?: string
	DoubleValue?: string
	IntegerValue?: string
	StringValue?: string
}

#BatchConfig: {
	BatchAcrossTopics?: bool
	MaxBatchOpenMs?: int
	MaxBatchSize?: int
	MaxBatchSizeBytes?: int
}

#CloudwatchAlarmAction: {
	AlarmName: string
	RoleArn: string
	StateReason: string
	StateValue: string
}

#CloudwatchLogsAction: {
	BatchMode?: bool
	LogGroupName: string
	RoleArn: string
}

#CloudwatchMetricAction: {
	MetricName: string
	MetricNamespace: string
	MetricTimestamp?: string
	MetricUnit: string
	MetricValue: string
	RoleArn: string
}

#DynamoDBAction: {
	HashKeyField: string
	HashKeyType?: string
	HashKeyValue: string
	PayloadField?: string
	RangeKeyField?: string
	RangeKeyType?: string
	RangeKeyValue?: string
	RoleArn: string
	TableName: string
}

#DynamoDBv2Action: {
	PutItem?: #PutItemInput
	RoleArn?: string
}

#ElasticsearchAction: {
	Endpoint: string
	Id: string
	Index: string
	RoleArn: string
	Type: string
}

#FirehoseAction: {
	BatchMode?: bool
	DeliveryStreamName: string
	RoleArn: string
	Separator?: string
}

#HttpAction: {
	Auth?: #HttpAuthorization
	BatchConfig?: #BatchConfig
	ConfirmationUrl?: string
	EnableBatching?: bool
	Headers?: [...#HttpActionHeader]
	Url: string
}

#HttpActionHeader: {
	Key: string
	Value: string
}

#HttpAuthorization: {
	Sigv4?: #SigV4Authorization
}

#IotAnalyticsAction: {
	BatchMode?: bool
	ChannelName: string
	RoleArn: string
}

#IotEventsAction: {
	BatchMode?: bool
	InputName: string
	MessageId?: string
	RoleArn: string
}

#IotSiteWiseAction: {
	PutAssetPropertyValueEntries: [...#PutAssetPropertyValueEntry]
	RoleArn: string
}

#KafkaAction: {
	ClientProperties: {...}
	DestinationArn: string
	Headers?: [...#KafkaActionHeader]
	Key?: string
	Partition?: string
	Topic: string
}

#KafkaActionHeader: {
	Key: string
	Value: string
}

#KinesisAction: {
	PartitionKey?: string
	RoleArn: string
	StreamName: string
}

#LambdaAction: {
	FunctionArn?: string
}

#LocationAction: {
	DeviceId: string
	Latitude: string
	Longitude: string
	RoleArn: string
	Timestamp?: #Timestamp
	TrackerName: string
}

#OpenSearchAction: {
	Endpoint: string
	Id: string
	Index: string
	RoleArn: string
	Type: string
}

#PutAssetPropertyValueEntry: {
	AssetId?: string
	EntryId?: string
	PropertyAlias?: string
	PropertyId?: string
	PropertyValues: [...#AssetPropertyValue]
}

#PutItemInput: {
	TableName: string
}

#RepublishAction: {
	Headers?: #RepublishActionHeaders
	Qos?: int
	RoleArn: string
	Topic: string
}

#RepublishActionHeaders: {
	ContentType?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	CorrelationData?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	MessageExpiry?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	PayloadFormatIndicator?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	ResponseTopic?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	UserProperties?: #UserProperties
}

#S3Action: {
	BucketName: string
	CannedAcl?: #CannedAccessControlList
	Key: string
	RoleArn: string
}

#SigV4Authorization: {
	RoleArn: string
	ServiceName: string
	SigningRegion: string
}

#SnsAction: {
	MessageFormat?: string
	RoleArn: string
	TargetArn: string
}

#SqsAction: {
	QueueUrl: string
	RoleArn: string
	UseBase64?: bool
}

#StepFunctionsAction: {
	ExecutionNamePrefix?: string
	RoleArn: string
	StateMachineName: string
}

#Tag: {
	Key: string
	Value: string
}

#Timestamp: {
	Unit?: string
	Value: string
}

#TimestreamAction: {
	DatabaseName: string
	Dimensions: #TimestreamDimensionsList
	RoleArn: string
	TableName: string
	Timestamp?: #TimestreamTimestamp
}

#TimestreamDimension: {
	Name: string
	Value: string
}

#TimestreamTimestamp: {
	Unit: string
	Value: string
}

#TopicRulePayload: {
	Actions: [...#Action]
	AwsIotSqlVersion?: string
	Description?: string
	ErrorAction?: #Action
	RuleDisabled?: bool
	Sql: string
}

#UserProperty: {
	Key: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}
