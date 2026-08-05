package scheduledquery

#Properties: {
	ClientToken?: #ClientToken
	ErrorReportConfiguration: #ErrorReportConfiguration
	KmsKeyId?: #KmsKeyId
	NotificationConfiguration: #NotificationConfiguration
	QueryString: #QueryString
	ScheduleConfiguration: #ScheduleConfiguration
	ScheduledQueryExecutionRoleArn: #ScheduledQueryExecutionRoleArn
	ScheduledQueryName?: #ScheduledQueryName
	Tags?: #Tags
	TargetConfiguration?: #TargetConfiguration
}

#Arn: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#BucketName: string & =~"[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]" & strings.MinRunes(3) & strings.MaxRunes(63)

#ClientToken: string & strings.MinRunes(32) & strings.MaxRunes(128)

#DatabaseName: string

#DimensionMapping: {
	DimensionValueType: #DimensionValueType
	Name: #DimensionMappingName
}

#DimensionMappingName: string

#DimensionMappings: [...#DimensionMapping]

#DimensionValueType: "VARCHAR"

#EncryptionOption: "SSE_S3" | "SSE_KMS"

#ErrorReportConfiguration: {
	S3Configuration: #S3Configuration
}

#Key: string & strings.MinRunes(1) & strings.MaxRunes(128)

#KmsKeyId: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#MeasureNameColumn: string

#MixedMeasureMapping: {
	MeasureName?: #MixedMeasureMappingMeasureName
	MeasureValueType: #MixedMeasureMappingMeasureValueType
	MultiMeasureAttributeMappings?: #MultiMeasureAttributeMappingList
	SourceColumn?: #MixedMeasureMappingSourceColumn
	TargetMeasureName?: #MixedMeasureMappingTargetMeasureName
}

#MixedMeasureMappingMeasureName: string

#MixedMeasureMappingMeasureValueType: "BIGINT" | "BOOLEAN" | "DOUBLE" | "VARCHAR" | "MULTI"

#MixedMeasureMappingSourceColumn: string

#MixedMeasureMappingTargetMeasureName: string

#MixedMeasureMappings: [...#MixedMeasureMapping]

#MultiMeasureAttributeMapping: {
	MeasureValueType: #MultiMeasureAttributeMappingMeasureValueType
	SourceColumn: #MultiMeasureAttributeMappingSourceColumn
	TargetMultiMeasureAttributeName?: #TargetMultiMeasureAttributeName
}

#MultiMeasureAttributeMappingList: [...#MultiMeasureAttributeMapping]

#MultiMeasureAttributeMappingMeasureValueType: "BIGINT" | "BOOLEAN" | "DOUBLE" | "VARCHAR" | "TIMESTAMP"

#MultiMeasureAttributeMappingSourceColumn: string

#MultiMeasureMappings: {
	MultiMeasureAttributeMappings: #MultiMeasureAttributeMappingList
	TargetMultiMeasureName?: #TargetMultiMeasureName
}

#NotificationConfiguration: {
	SnsConfiguration: #SnsConfiguration
}

#ObjectKeyPrefix: string & =~"[a-zA-Z0-9|!\\-_*'\\(\\)]([a-zA-Z0-9]|[!\\-_*'\\(\\)\\/.])+" & strings.MinRunes(1) & strings.MaxRunes(896)

#QueryString: string & strings.MinRunes(1) & strings.MaxRunes(262144)

#S3Configuration: {
	BucketName: #BucketName
	EncryptionOption?: #EncryptionOption
	ObjectKeyPrefix?: #ObjectKeyPrefix
}

#ScheduleConfiguration: {
	ScheduleExpression: #ScheduleExpression
}

#ScheduleExpression: string & strings.MinRunes(1) & strings.MaxRunes(256)

#ScheduledQueryExecutionRoleArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#ScheduledQueryName: string & =~"[a-zA-Z0-9_.-]+" & strings.MinRunes(1) & strings.MaxRunes(64)

#SnsConfiguration: {
	TopicArn: #TopicArn
}

#TableName: string

#Tag: {
	Key: #Key
	Value: #Value
}

#Tags: [...#Tag]

#TargetConfiguration: {
	TimestreamConfiguration: #TimestreamConfiguration
}

#TargetMultiMeasureAttributeName: string

#TargetMultiMeasureName: string

#TimeColumn: string

#TimestreamConfiguration: {
	DatabaseName: #DatabaseName
	DimensionMappings: #DimensionMappings
	MeasureNameColumn?: #MeasureNameColumn
	MixedMeasureMappings?: #MixedMeasureMappings
	MultiMeasureMappings?: #MultiMeasureMappings
	TableName: #TableName
	TimeColumn: #TimeColumn
}

#TopicArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)

#Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
