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

#DimensionMapping: {
	DimensionValueType: #DimensionValueType
	Name: #DimensionMappingName
}

#ErrorReportConfiguration: {
	S3Configuration: #S3Configuration
}

#MixedMeasureMapping: {
	MeasureName?: #MixedMeasureMappingMeasureName
	MeasureValueType: #MixedMeasureMappingMeasureValueType
	MultiMeasureAttributeMappings?: #MultiMeasureAttributeMappingList
	SourceColumn?: #MixedMeasureMappingSourceColumn
	TargetMeasureName?: #MixedMeasureMappingTargetMeasureName
}

#MultiMeasureAttributeMapping: {
	MeasureValueType: #MultiMeasureAttributeMappingMeasureValueType
	SourceColumn: #MultiMeasureAttributeMappingSourceColumn
	TargetMultiMeasureAttributeName?: #TargetMultiMeasureAttributeName
}

#MultiMeasureMappings: {
	MultiMeasureAttributeMappings: #MultiMeasureAttributeMappingList
	TargetMultiMeasureName?: #TargetMultiMeasureName
}

#NotificationConfiguration: {
	SnsConfiguration: #SnsConfiguration
}

#S3Configuration: {
	BucketName: #BucketName
	EncryptionOption?: #EncryptionOption
	ObjectKeyPrefix?: #ObjectKeyPrefix
}

#ScheduleConfiguration: {
	ScheduleExpression: #ScheduleExpression
}

#SnsConfiguration: {
	TopicArn: #TopicArn
}

#Tag: {
	Key: #Key
	Value: #Value
}

#TargetConfiguration: {
	TimestreamConfiguration: #TimestreamConfiguration
}

#TimestreamConfiguration: {
	DatabaseName: #DatabaseName
	DimensionMappings: #DimensionMappings
	MeasureNameColumn?: #MeasureNameColumn
	MixedMeasureMappings?: #MixedMeasureMappings
	MultiMeasureMappings?: #MultiMeasureMappings
	TableName: #TableName
	TimeColumn: #TimeColumn
}
