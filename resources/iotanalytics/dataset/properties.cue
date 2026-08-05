package dataset

import "strings"

#Properties: {
	Actions: [...#Action]
	ContentDeliveryRules?: [...#DatasetContentDeliveryRule]
	DatasetName?: string & =~"(^(?!_{2}))(^[a-zA-Z0-9_]+$)" & strings.MinRunes(1) & strings.MaxRunes(128)
	LateDataRules?: [...#LateDataRule]
	RetentionPeriod?: #RetentionPeriod
	Tags?: [...#Tag]
	Triggers?: [...#Trigger]
	VersioningConfiguration?: #VersioningConfiguration
}

#Action: {
	ActionName: string & =~"^[a-zA-Z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	ContainerAction?: #ContainerAction
	QueryAction?: #QueryAction
}

#ContainerAction: {
	ExecutionRoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	Image: string & strings.MaxRunes(255)
	ResourceConfiguration: #ResourceConfiguration
	Variables?: [...#Variable]
}

#DatasetContentDeliveryRule: {
	Destination: #DatasetContentDeliveryRuleDestination
	EntryName?: string
}

#DatasetContentDeliveryRuleDestination: {
	IotEventsDestinationConfiguration?: #IotEventsDestinationConfiguration
	S3DestinationConfiguration?: #S3DestinationConfiguration
}

#DatasetContentVersionValue: {
	DatasetName: string & =~"(^(?!_{2}))(^[a-zA-Z0-9_]+$)" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#DeltaTime: {
	OffsetSeconds: int
	TimeExpression: string
}

#DeltaTimeSessionWindowConfiguration: {
	TimeoutInMinutes: int & >=1 & <=60
}

#Filter: {
	DeltaTime?: #DeltaTime
}

#GlueConfiguration: {
	DatabaseName: string & strings.MinRunes(1) & strings.MaxRunes(150)
	TableName: string & strings.MinRunes(1) & strings.MaxRunes(150)
}

#IotEventsDestinationConfiguration: {
	InputName: string & =~"^[a-zA-Z][a-zA-Z0-9_]*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#LateDataRule: {
	RuleConfiguration: #LateDataRuleConfiguration
	RuleName?: string & =~"^[a-zA-Z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#LateDataRuleConfiguration: {
	DeltaTimeSessionWindowConfiguration?: #DeltaTimeSessionWindowConfiguration
}

#OutputFileUriValue: {
	FileName: string & =~"^[\\w\\.-]{1,255}$"
}

#QueryAction: {
	Filters?: [...#Filter]
	SqlQuery: string
}

#ResourceConfiguration: {
	ComputeType: "ACU_1" | "ACU_2"
	VolumeSizeInGB: int & >=1 & <=50
}

#RetentionPeriod: {
	NumberOfDays?: int & >=1 & <=2147483647
	Unlimited?: bool
}

#S3DestinationConfiguration: {
	Bucket: string & =~"^[a-zA-Z0-9.\\-_]*$" & strings.MinRunes(3) & strings.MaxRunes(255)
	GlueConfiguration?: #GlueConfiguration
	Key: string & =~"^[a-zA-Z0-9!_.*'()/{}:-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#Schedule: {
	ScheduleExpression: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Trigger: {
	Schedule?: #Schedule
	TriggeringDataset?: #TriggeringDataset
}

#TriggeringDataset: {
	DatasetName: string & =~"(^(?!_{2}))(^[a-zA-Z0-9_]+$)" & strings.MinRunes(1) & strings.MaxRunes(128)
}

#Variable: {
	DatasetContentVersionValue?: #DatasetContentVersionValue
	DoubleValue?: number
	OutputFileUriValue?: #OutputFileUriValue
	StringValue?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	VariableName: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#VersioningConfiguration: {
	MaxVersions?: int & >=1 & <=1000
	Unlimited?: bool
}
