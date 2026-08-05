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

#MarketoSourceProperties: {
	Object: #Object
}

#ObjectTypeMapping: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Value: string & =~"^[a-zA-Z_][a-zA-Z_0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#S3SourceProperties: {
	BucketName: string & =~"\\S+" & strings.MinRunes(3) & strings.MaxRunes(63)
	BucketPrefix?: string & =~".*" & strings.MaxRunes(512)
}

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

#TriggerConfig: {
	TriggerProperties?: #TriggerProperties
	TriggerType: #TriggerType
}

#TriggerProperties: {
	Scheduled?: #ScheduledTriggerProperties
}

#ZendeskSourceProperties: {
	Object: #Object
}
