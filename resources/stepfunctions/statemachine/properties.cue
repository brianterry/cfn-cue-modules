package statemachine

import "strings"

#Properties: {
	Definition?: #Definition
	DefinitionS3Location?: #S3Location
	DefinitionString?: string & strings.MinRunes(1) & strings.MaxRunes(1048576)
	DefinitionSubstitutions?: #DefinitionSubstitutions
	EncryptionConfiguration?: #EncryptionConfiguration
	LoggingConfiguration?: #LoggingConfiguration
	RoleArn: string & strings.MinRunes(1) & strings.MaxRunes(256)
	StateMachineName?: string & strings.MinRunes(1) & strings.MaxRunes(80)
	StateMachineType?: "STANDARD" | "EXPRESS"
	Tags?: [...#TagsEntry]
	TracingConfiguration?: #TracingConfiguration
}

#CloudWatchLogsLogGroup: {
	LogGroupArn?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Definition: {...}

#DefinitionSubstitutions: {...}

#EncryptionConfiguration: {
	KmsDataKeyReusePeriodSeconds?: int & >=60 & <=900
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Type: "CUSTOMER_MANAGED_KMS_KEY" | "AWS_OWNED_KEY"
}

#LogDestination: {
	CloudWatchLogsLogGroup?: #CloudWatchLogsLogGroup
}

#LoggingConfiguration: {
	Destinations?: [...#LogDestination]
	IncludeExecutionData?: bool
	Level?: "ALL" | "ERROR" | "FATAL" | "OFF"
}

#S3Location: {
	Bucket: string
	Key: string
	Version?: string
}

#TagsEntry: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TracingConfiguration: {
	Enabled?: bool
}
