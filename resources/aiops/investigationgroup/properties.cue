package investigationgroup

import "strings"

#Properties: {
	// An array of key-value pairs of notification channels to apply to this resource.
	ChatbotNotificationChannels?: [...#ChatbotNotificationChannel]
	// An array of cross account configurations.
	CrossAccountConfigurations?: [...#CrossAccountConfiguration]
	EncryptionConfig?: #EncryptionConfigMap
	// Investigation Group policy
	InvestigationGroupPolicy?: string
	// Flag to enable cloud trail history
	IsCloudTrailEventHistoryEnabled?: bool
	Name: #StringWithPatternAndLengthLimits
	// The number of days to retain the investigation group
	RetentionInDays?: int
	RoleArn?: #RoleArn
	TagKeyBoundaries?: [...string & strings.MinRunes(1) & strings.MaxRunes(200)]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#ChatbotNotificationChannel: {
	ChatConfigurationArns?: [...string]
	SNSTopicArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#CrossAccountConfiguration: {
	SourceRoleArn?: #RoleArn
}

#EncryptionConfigMap: {
	EncryptionConfigurationType?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	KmsKeyId?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#InvestigationGroupArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)

#RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)

#StringWithPatternAndLengthLimits: string & strings.MinRunes(1) & strings.MaxRunes(512)

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Timestamp: string
