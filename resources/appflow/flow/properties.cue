package flow

import "strings"

#Properties: {
	// Description of the flow.
	Description?: string & =~"[\\w!@#\\-.?,\\s]*" & strings.MaxRunes(2048)
	// List of Destination connectors of the flow.
	DestinationFlowConfigList: [...#DestinationFlowConfig]
	// Name of the flow.
	FlowName: string & =~"[a-zA-Z0-9][\\w!@#.-]+" & strings.MinRunes(1) & strings.MaxRunes(256)
	// Flow activation status for Scheduled- and Event-triggered flows
	FlowStatus?: "Active" | "Suspended" | "Draft"
	// The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment variables. If it's not provided, AWS Lambda uses a default service key.
	KMSArn?: string & =~"arn:aws:kms:.*:[0-9]+:.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Configurations of metadata catalog of the flow.
	MetadataCatalogConfig?: #MetadataCatalogConfig
	// Configurations of Source connector of the flow.
	SourceFlowConfig: #SourceFlowConfig
	// List of Tags.
	Tags?: [...#Tag]
	// List of tasks for the flow.
	Tasks: [...#Task]
	// Trigger settings of the flow.
	TriggerConfig: #TriggerConfig
}

#AggregationConfig: {
	AggregationType?: #AggregationType
	TargetFileSize?: #TargetFileSize
}

#AmplitudeSourceProperties: {
	Object: #Object
}

#ConnectorOperator: {
	Amplitude?: #AmplitudeConnectorOperator
	CustomConnector?: #Operator
	Datadog?: #DatadogConnectorOperator
	Dynatrace?: #DynatraceConnectorOperator
	GoogleAnalytics?: #GoogleAnalyticsConnectorOperator
	InforNexus?: #InforNexusConnectorOperator
	Marketo?: #MarketoConnectorOperator
	Pardot?: #PardotConnectorOperator
	S3?: #S3ConnectorOperator
	SAPOData?: #SAPODataConnectorOperator
	Salesforce?: #SalesforceConnectorOperator
	ServiceNow?: #ServiceNowConnectorOperator
	Singular?: #SingularConnectorOperator
	Slack?: #SlackConnectorOperator
	Trendmicro?: #TrendmicroConnectorOperator
	Veeva?: #VeevaConnectorOperator
	Zendesk?: #ZendeskConnectorOperator
}

#CustomConnectorDestinationProperties: {
	CustomProperties?: #CustomProperties
	EntityName: #EntityName
	ErrorHandlingConfig?: #ErrorHandlingConfig
	// List of fields used as ID when performing a write operation.
	IdFieldNames?: [...string]
	WriteOperationType?: #WriteOperationType
}

#CustomConnectorSourceProperties: {
	CustomProperties?: #CustomProperties
	DataTransferApi?: {
		Name: string & =~"[\\w/-]+" & strings.MaxRunes(64)
		Type: "SYNC" | "ASYNC" | "AUTOMATIC"
	}
	EntityName: #EntityName
}

#DatadogSourceProperties: {
	Object: #Object
}

#DestinationConnectorProperties: {
	CustomConnector?: #CustomConnectorDestinationProperties
	EventBridge?: #EventBridgeDestinationProperties
	LookoutMetrics?: #LookoutMetricsDestinationProperties
	Marketo?: #MarketoDestinationProperties
	Redshift?: #RedshiftDestinationProperties
	S3?: #S3DestinationProperties
	SAPOData?: #SAPODataDestinationProperties
	Salesforce?: #SalesforceDestinationProperties
	Snowflake?: #SnowflakeDestinationProperties
	Upsolver?: #UpsolverDestinationProperties
	Zendesk?: #ZendeskDestinationProperties
}

#DestinationFlowConfig: {
	// The API version that the destination connector uses.
	ApiVersion?: #ApiVersion
	// Name of destination connector profile
	ConnectorProfileName?: #ConnectorProfileName
	// Destination connector type
	ConnectorType: #ConnectorType
	// Destination connector details
	DestinationConnectorProperties: #DestinationConnectorProperties
}

#DynatraceSourceProperties: {
	Object: #Object
}

#ErrorHandlingConfig: {
	BucketName?: #BucketName
	BucketPrefix?: #BucketPrefix
	FailOnFirstError?: bool
}

#EventBridgeDestinationProperties: {
	ErrorHandlingConfig?: #ErrorHandlingConfig
	Object: #Object
}

#GlueDataCatalog: {
	// A string containing the value for the tag
	DatabaseName: string & strings.MinRunes(0) & strings.MaxRunes(255)
	// A string containing the value for the tag
	RoleArn: string & =~"arn:aws:iam:.*:[0-9]+:.*" & strings.MinRunes(0) & strings.MaxRunes(512)
	// A string containing the value for the tag
	TablePrefix: string & strings.MinRunes(0) & strings.MaxRunes(128)
}

#GoogleAnalyticsSourceProperties: {
	Object: #Object
}

#IncrementalPullConfig: {
	DatetimeTypeFieldName?: #DatetimeTypeFieldName
}

#InforNexusSourceProperties: {
	Object: #Object
}

#LookoutMetricsDestinationProperties: {
	Object?: #Object
}

#MarketoDestinationProperties: {
	ErrorHandlingConfig?: #ErrorHandlingConfig
	Object: #Object
}

#MarketoSourceProperties: {
	Object: #Object
}

#MetadataCatalogConfig: {
	// Configurations of glue data catalog of the flow.
	GlueDataCatalog?: #GlueDataCatalog
}

#PardotSourceProperties: {
	Object: #Object
}

#PrefixConfig: {
	PathPrefixHierarchy?: #PathPrefixHierarchy
	PrefixFormat?: #PrefixFormat
	PrefixType?: #PrefixType
}

#RedshiftDestinationProperties: {
	BucketPrefix?: #BucketPrefix
	ErrorHandlingConfig?: #ErrorHandlingConfig
	IntermediateBucketName: #BucketName
	Object: #Object
}

#S3DestinationProperties: {
	BucketName: #BucketName
	BucketPrefix?: #BucketPrefix
	S3OutputFormatConfig?: #S3OutputFormatConfig
}

#S3InputFormatConfig: {
	S3InputFileType?: "CSV" | "JSON"
}

#S3OutputFormatConfig: {
	AggregationConfig?: #AggregationConfig
	FileType?: #FileType
	PrefixConfig?: #PrefixConfig
	PreserveSourceDataTyping?: #PreserveSourceDataTyping
}

#S3SourceProperties: {
	BucketName: #BucketName
	BucketPrefix: #BucketPrefix
	S3InputFormatConfig?: #S3InputFormatConfig
}

#SAPODataDestinationProperties: {
	ErrorHandlingConfig?: #ErrorHandlingConfig
	// List of fields used as ID when performing a write operation.
	IdFieldNames?: [...string]
	ObjectPath: #Object
	SuccessResponseHandlingConfig?: #SuccessResponseHandlingConfig
	WriteOperationType?: #WriteOperationType
}

#SAPODataPaginationConfig: {
	maxPageSize: #SAPODataMaxPageSize
}

#SAPODataParallelismConfig: {
	maxParallelism: #SAPODataMaxParallelism
}

#SAPODataSourceProperties: {
	ObjectPath: #Object
	paginationConfig?: #SAPODataPaginationConfig
	parallelismConfig?: #SAPODataParallelismConfig
}

#SalesforceDestinationProperties: {
	DataTransferApi?: #DataTransferApi
	ErrorHandlingConfig?: #ErrorHandlingConfig
	// List of fields used as ID when performing a write operation.
	IdFieldNames?: [...string]
	Object: #Object
	WriteOperationType?: #WriteOperationType
}

#SalesforceSourceProperties: {
	DataTransferApi?: #DataTransferApi
	EnableDynamicFieldUpdate?: #EnableDynamicFieldUpdate
	IncludeDeletedRecords?: #IncludeDeletedRecords
	Object: #Object
}

#ScheduledTriggerProperties: {
	DataPullMode?: "Incremental" | "Complete"
	FirstExecutionFrom?: number
	FlowErrorDeactivationThreshold?: int & >=1 & <=100
	ScheduleEndTime?: number
	ScheduleExpression: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ScheduleOffset?: number & >=0 & <=36000
	ScheduleStartTime?: number
	TimeZone?: string & strings.MaxRunes(256)
}

#ServiceNowSourceProperties: {
	Object: #Object
}

#SingularSourceProperties: {
	Object: #Object
}

#SlackSourceProperties: {
	Object: #Object
}

#SnowflakeDestinationProperties: {
	BucketPrefix?: #BucketPrefix
	ErrorHandlingConfig?: #ErrorHandlingConfig
	IntermediateBucketName: #BucketName
	Object: #Object
}

#SourceConnectorProperties: {
	Amplitude?: #AmplitudeSourceProperties
	CustomConnector?: #CustomConnectorSourceProperties
	Datadog?: #DatadogSourceProperties
	Dynatrace?: #DynatraceSourceProperties
	GoogleAnalytics?: #GoogleAnalyticsSourceProperties
	InforNexus?: #InforNexusSourceProperties
	Marketo?: #MarketoSourceProperties
	Pardot?: #PardotSourceProperties
	S3?: #S3SourceProperties
	SAPOData?: #SAPODataSourceProperties
	Salesforce?: #SalesforceSourceProperties
	ServiceNow?: #ServiceNowSourceProperties
	Singular?: #SingularSourceProperties
	Slack?: #SlackSourceProperties
	Trendmicro?: #TrendmicroSourceProperties
	Veeva?: #VeevaSourceProperties
	Zendesk?: #ZendeskSourceProperties
}

#SourceFlowConfig: {
	// The API version that the destination connector uses.
	ApiVersion?: #ApiVersion
	// Name of source connector profile
	ConnectorProfileName?: #ConnectorProfileName
	// Type of source connector
	ConnectorType: #ConnectorType
	// Configuration for scheduled incremental data pull
	IncrementalPullConfig?: #IncrementalPullConfig
	// Source connector details required to query a connector
	SourceConnectorProperties: #SourceConnectorProperties
}

#SuccessResponseHandlingConfig: {
	BucketName?: #BucketName
	BucketPrefix?: #BucketPrefix
}

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Task: {
	// Operation to be performed on provided source fields
	ConnectorOperator?: #ConnectorOperator
	// A field value on which source field should be validated
	DestinationField?: string & strings.MaxRunes(256)
	// Source fields on which particular task will be applied
	SourceFields: [...string]
	// A Map used to store task related info
	TaskProperties?: [...#TaskPropertiesObject]
	// Type of task
	TaskType: #TaskType
}

#TaskPropertiesObject: {
	Key: #OperatorPropertiesKeys
	Value: string & =~".+" & strings.MaxRunes(2048)
}

#TrendmicroSourceProperties: {
	Object: #Object
}

#TriggerConfig: {
	// Details required based on the type of trigger
	TriggerProperties?: #ScheduledTriggerProperties
	// Trigger type of the flow
	TriggerType: #TriggerType
}

#UpsolverDestinationProperties: {
	BucketName: #UpsolverBucketName
	BucketPrefix?: #BucketPrefix
	S3OutputFormatConfig: #UpsolverS3OutputFormatConfig
}

#UpsolverS3OutputFormatConfig: {
	AggregationConfig?: #AggregationConfig
	FileType?: #FileType
	PrefixConfig: #PrefixConfig
}

#VeevaSourceProperties: {
	DocumentType?: #DocumentType
	IncludeAllVersions?: #IncludeAllVersions
	IncludeRenditions?: #IncludeRenditions
	IncludeSourceFiles?: #IncludeSourceFiles
	Object: #Object
}

#ZendeskDestinationProperties: {
	ErrorHandlingConfig?: #ErrorHandlingConfig
	// List of fields used as ID when performing a write operation.
	IdFieldNames?: [...string]
	Object: #Object
	WriteOperationType?: #WriteOperationType
}

#ZendeskSourceProperties: {
	Object: #Object
}
