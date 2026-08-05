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

#AggregationType: "None" | "SingleFile"

#AmplitudeConnectorOperator: "BETWEEN"

#AmplitudeSourceProperties: {
	Object: #Object
}

#ApiVersion: string & =~"\\S+" & strings.MaxRunes(256)

#BucketName: string & =~"\\S+" & strings.MinRunes(3) & strings.MaxRunes(63)

#BucketPrefix: string & strings.MaxRunes(512)

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

#ConnectorProfileName: string & =~"[\\w/!@#+=.-]+" & strings.MaxRunes(256)

#ConnectorType: "SAPOData" | "Salesforce" | "Pardot" | "Singular" | "Slack" | "Redshift" | "S3" | "Marketo" | "Googleanalytics" | "Zendesk" | "Servicenow" | "Datadog" | "Trendmicro" | "Snowflake" | "Dynatrace" | "Infornexus" | "Amplitude" | "Veeva" | "CustomConnector" | "EventBridge" | "Upsolver" | "LookoutMetrics"

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

#CustomProperties: {...}

#DataTransferApi: "AUTOMATIC" | "BULKV2" | "REST_SYNC"

#DatadogConnectorOperator: "PROJECTION" | "BETWEEN" | "EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#DatadogSourceProperties: {
	Object: #Object
}

#DatetimeTypeFieldName: string & strings.MaxRunes(256)

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

#DocumentType: string & =~"[\\s\\w_-]+" & strings.MaxRunes(512)

#DynatraceConnectorOperator: "PROJECTION" | "BETWEEN" | "EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#DynatraceSourceProperties: {
	Object: #Object
}

#EnableDynamicFieldUpdate: bool

#EntityName: string & =~"\\S+" & strings.MaxRunes(1024)

#ErrorHandlingConfig: {
	BucketName?: #BucketName
	BucketPrefix?: #BucketPrefix
	FailOnFirstError?: bool
}

#EventBridgeDestinationProperties: {
	ErrorHandlingConfig?: #ErrorHandlingConfig
	Object: #Object
}

#FileType: "CSV" | "JSON" | "PARQUET"

#GlueDataCatalog: {
	// A string containing the value for the tag
	DatabaseName: string & strings.MinRunes(0) & strings.MaxRunes(255)
	// A string containing the value for the tag
	RoleArn: string & =~"arn:aws:iam:.*:[0-9]+:.*" & strings.MinRunes(0) & strings.MaxRunes(512)
	// A string containing the value for the tag
	TablePrefix: string & strings.MinRunes(0) & strings.MaxRunes(128)
}

#GoogleAnalyticsConnectorOperator: "PROJECTION" | "BETWEEN"

#GoogleAnalyticsSourceProperties: {
	Object: #Object
}

#IncludeAllVersions: bool

#IncludeDeletedRecords: bool

#IncludeRenditions: bool

#IncludeSourceFiles: bool

#IncrementalPullConfig: {
	DatetimeTypeFieldName?: #DatetimeTypeFieldName
}

#InforNexusConnectorOperator: "PROJECTION" | "BETWEEN" | "EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#InforNexusSourceProperties: {
	Object: #Object
}

#LookoutMetricsDestinationProperties: {
	Object?: #Object
}

#MarketoConnectorOperator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "BETWEEN" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

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

#Name: string & =~"\\S+" & strings.MaxRunes(128)

#Object: string & =~"\\S+" & strings.MaxRunes(512)

#Operator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "CONTAINS" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#OperatorPropertiesKeys: "VALUE" | "VALUES" | "DATA_TYPE" | "UPPER_BOUND" | "LOWER_BOUND" | "SOURCE_DATA_TYPE" | "DESTINATION_DATA_TYPE" | "VALIDATION_ACTION" | "MASK_VALUE" | "MASK_LENGTH" | "TRUNCATE_LENGTH" | "MATH_OPERATION_FIELDS_ORDER" | "CONCAT_FORMAT" | "SUBFIELD_CATEGORY_MAP" | "EXCLUDE_SOURCE_FIELDS_LIST" | "INCLUDE_NEW_FIELDS" | "ORDERED_PARTITION_KEYS_LIST"

#PardotConnectorOperator: "PROJECTION" | "EQUAL_TO" | "NO_OP" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC"

#PardotSourceProperties: {
	Object: #Object
}

#PathPrefix: "EXECUTION_ID" | "SCHEMA_VERSION"

#PathPrefixHierarchy: [...#PathPrefix]

#PrefixConfig: {
	PathPrefixHierarchy?: #PathPrefixHierarchy
	PrefixFormat?: #PrefixFormat
	PrefixType?: #PrefixType
}

#PrefixFormat: "YEAR" | "MONTH" | "DAY" | "HOUR" | "MINUTE"

#PrefixType: "FILENAME" | "PATH" | "PATH_AND_FILENAME"

#PreserveSourceDataTyping: bool

#RedshiftDestinationProperties: {
	BucketPrefix?: #BucketPrefix
	ErrorHandlingConfig?: #ErrorHandlingConfig
	IntermediateBucketName: #BucketName
	Object: #Object
}

#S3ConnectorOperator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

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

#SAPODataConnectorOperator: "PROJECTION" | "LESS_THAN" | "CONTAINS" | "GREATER_THAN" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#SAPODataDestinationProperties: {
	ErrorHandlingConfig?: #ErrorHandlingConfig
	// List of fields used as ID when performing a write operation.
	IdFieldNames?: [...string]
	ObjectPath: #Object
	SuccessResponseHandlingConfig?: #SuccessResponseHandlingConfig
	WriteOperationType?: #WriteOperationType
}

#SAPODataMaxPageSize: int & >=1 & <=10000

#SAPODataMaxParallelism: int & >=1 & <=10

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

#SalesforceConnectorOperator: "PROJECTION" | "LESS_THAN" | "CONTAINS" | "GREATER_THAN" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

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

#ServiceNowConnectorOperator: "PROJECTION" | "LESS_THAN" | "CONTAINS" | "GREATER_THAN" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#ServiceNowSourceProperties: {
	Object: #Object
}

#SingularConnectorOperator: "PROJECTION" | "EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#SingularSourceProperties: {
	Object: #Object
}

#SlackConnectorOperator: "PROJECTION" | "BETWEEN" | "EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

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

#Status: "Active" | "Draft" | "Errored" | "Suspended"

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

#TargetFileSize: int

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

#TaskType: "Arithmetic" | "Filter" | "Map" | "Map_all" | "Mask" | "Merge" | "Passthrough" | "Truncate" | "Validate" | "Partition"

#TrendmicroConnectorOperator: "PROJECTION" | "EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#TrendmicroSourceProperties: {
	Object: #Object
}

#TriggerConfig: {
	// Details required based on the type of trigger
	TriggerProperties?: #ScheduledTriggerProperties
	// Trigger type of the flow
	TriggerType: #TriggerType
}

#TriggerType: "Scheduled" | "Event" | "OnDemand"

#UpsolverBucketName: string & =~"^(upsolver-appflow)\\S*" & strings.MinRunes(16) & strings.MaxRunes(63)

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

#VeevaConnectorOperator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#VeevaSourceProperties: {
	DocumentType?: #DocumentType
	IncludeAllVersions?: #IncludeAllVersions
	IncludeRenditions?: #IncludeRenditions
	IncludeSourceFiles?: #IncludeSourceFiles
	Object: #Object
}

#WriteOperationType: "INSERT" | "UPSERT" | "UPDATE" | "DELETE"

#ZendeskConnectorOperator: "PROJECTION" | "GREATER_THAN" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

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
