package integration

import "strings"

#Properties: {
	// The unique name of the domain.
	DomainName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// A list of unique names for active event triggers associated with the integration.
	EventTriggerNames?: [...string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)]
	FlowDefinition?: #FlowDefinition
	// The name of the ObjectType defined for the 3rd party data in Profile Service
	ObjectTypeName?: string & =~"^[a-zA-Z_][a-zA-Z_0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The mapping between 3rd party event types and ObjectType names
	ObjectTypeNames?: [...#ObjectTypeMapping]
	// Scope of the integration, such as 'PROFILE' or 'DOMAIN'
	Scope?: "PROFILE" | "DOMAIN"
	// The tags (keys and values) associated with the integration
	Tags?: [...#Tag]
	// The URI of the S3 bucket or any other type of data source.
	Uri?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#ConnectorOperator: {
	Marketo?: #MarketoConnectorOperator
	S3?: #S3ConnectorOperator
	Salesforce?: #SalesforceConnectorOperator
	ServiceNow?: #ServiceNowConnectorOperator
	Zendesk?: #ZendeskConnectorOperator
}

#ConnectorType: "Salesforce" | "Marketo" | "ServiceNow" | "Zendesk" | "S3"

#Date: number

#DestinationField: string & =~".*" & strings.MaxRunes(256)

#FlowDefinition: {
	Description?: string & =~"[\\w!@#\\-.?,\\s]*" & strings.MaxRunes(2048)
	FlowName: string & =~"[a-zA-Z0-9][\\w!@#.-]+" & strings.MaxRunes(256)
	KmsArn: string & =~"arn:aws:kms:.*:[0-9]+:.*" & strings.MinRunes(20) & strings.MaxRunes(2048)
	SourceFlowConfig: #SourceFlowConfig
	Tasks: [...#Task]
	TriggerConfig: #TriggerConfig
}

#IncrementalPullConfig: {
	DatetimeTypeFieldName?: string & strings.MaxRunes(256)
}

#MarketoConnectorOperator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "BETWEEN" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#MarketoSourceProperties: {
	Object: #Object
}

#Object: string & =~"\\S+" & strings.MaxRunes(512)

#ObjectTypeMapping: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Value: string & =~"^[a-zA-Z_][a-zA-Z_0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Operator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "CONTAINS" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#OperatorPropertiesKeys: "VALUE" | "VALUES" | "DATA_TYPE" | "UPPER_BOUND" | "LOWER_BOUND" | "SOURCE_DATA_TYPE" | "DESTINATION_DATA_TYPE" | "VALIDATION_ACTION" | "MASK_VALUE" | "MASK_LENGTH" | "TRUNCATE_LENGTH" | "MATH_OPERATION_FIELDS_ORDER" | "CONCAT_FORMAT" | "SUBFIELD_CATEGORY_MAP"

#S3ConnectorOperator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#S3SourceProperties: {
	BucketName: string & =~"\\S+" & strings.MinRunes(3) & strings.MaxRunes(63)
	BucketPrefix?: string & =~".*" & strings.MaxRunes(512)
}

#SalesforceConnectorOperator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "CONTAINS" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#SalesforceSourceProperties: {
	EnableDynamicFieldUpdate?: bool
	IncludeDeletedRecords?: bool
	Object: #Object
}

#ScheduledTriggerProperties: {
	DataPullMode?: "Incremental" | "Complete"
	FirstExecutionFrom?: #Date
	ScheduleEndTime?: #Date
	ScheduleExpression: string & =~".*" & strings.MaxRunes(256)
	ScheduleOffset?: int & >=0 & <=36000
	ScheduleStartTime?: #Date
	Timezone?: string & =~".*" & strings.MaxRunes(256)
}

#ServiceNowConnectorOperator: "PROJECTION" | "LESS_THAN" | "GREATER_THAN" | "CONTAINS" | "BETWEEN" | "LESS_THAN_OR_EQUAL_TO" | "GREATER_THAN_OR_EQUAL_TO" | "EQUAL_TO" | "NOT_EQUAL_TO" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#ServiceNowSourceProperties: {
	Object: #Object
}

#SourceConnectorProperties: {
	Marketo?: #MarketoSourceProperties
	S3?: #S3SourceProperties
	Salesforce?: #SalesforceSourceProperties
	ServiceNow?: #ServiceNowSourceProperties
	Zendesk?: #ZendeskSourceProperties
}

#SourceFlowConfig: {
	ConnectorProfileName?: string & =~"[\\w/!@#+=.-]+" & strings.MaxRunes(256)
	ConnectorType: #ConnectorType
	IncrementalPullConfig?: #IncrementalPullConfig
	SourceConnectorProperties: #SourceConnectorProperties
}

#Tag: {
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Task: {
	ConnectorOperator?: #ConnectorOperator
	DestinationField?: #DestinationField
	SourceFields: [...string & =~".*" & strings.MaxRunes(2048)]
	TaskProperties?: [...#TaskPropertiesMap]
	TaskType: #TaskType
}

#TaskPropertiesMap: {
	OperatorPropertyKey: #OperatorPropertiesKeys
	Property: string & =~".+" & strings.MaxRunes(2048)
}

#TaskType: "Arithmetic" | "Filter" | "Map" | "Mask" | "Merge" | "Truncate" | "Validate"

#TriggerConfig: {
	TriggerProperties?: #TriggerProperties
	TriggerType: #TriggerType
}

#TriggerProperties: {
	Scheduled?: #ScheduledTriggerProperties
}

#TriggerType: "Scheduled" | "Event" | "OnDemand"

#ZendeskConnectorOperator: "PROJECTION" | "GREATER_THAN" | "ADDITION" | "MULTIPLICATION" | "DIVISION" | "SUBTRACTION" | "MASK_ALL" | "MASK_FIRST_N" | "MASK_LAST_N" | "VALIDATE_NON_NULL" | "VALIDATE_NON_ZERO" | "VALIDATE_NON_NEGATIVE" | "VALIDATE_NUMERIC" | "NO_OP"

#ZendeskSourceProperties: {
	Object: #Object
}
