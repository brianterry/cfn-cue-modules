package botalias

import "strings"

#Properties: {
	BotAliasLocaleSettings?: #BotAliasLocaleSettingsList
	BotAliasName: #Name
	// A list of tags to add to the bot alias.
	BotAliasTags?: [...#Tag]
	BotId: #Id
	BotVersion?: #BotVersion
	ConversationLogSettings?: #ConversationLogSettings
	Description?: #Description
	// Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of user utterances.
	SentimentAnalysisSettings?: {
		DetectSentiment: bool
	}
}

#AudioLogDestination: {
	S3Bucket: #S3BucketLogDestination
}

#AudioLogSetting: {
	Destination: #AudioLogDestination
	Enabled: bool
}

#BotAliasLocaleSettings: {
	CodeHookSpecification?: #CodeHookSpecification
	// Whether the Lambda code hook is enabled
	Enabled: bool
}

#BotAliasLocaleSettingsItem: {
	BotAliasLocaleSetting: #BotAliasLocaleSettings
	// A string used to identify the locale
	LocaleId: string & strings.MinRunes(1) & strings.MaxRunes(128)
}

#CloudWatchLogGroupLogDestination: {
	// A string used to identify the groupArn for the Cloudwatch Log Group
	CloudWatchLogGroupArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// A string containing the value for the Log Prefix
	LogPrefix: string & strings.MinRunes(0) & strings.MaxRunes(1024)
}

#CodeHookSpecification: {
	LambdaCodeHook: #LambdaCodeHook
}

#ConversationLogSettings: {
	AudioLogSettings?: #AudioLogSettings
	TextLogSettings?: #TextLogSettings
}

#LambdaCodeHook: {
	// The version of the request-response that you want Amazon Lex to use to invoke your Lambda function.
	CodeHookInterfaceVersion: string & strings.MinRunes(1) & strings.MaxRunes(5)
	// The Amazon Resource Name (ARN) of the Lambda function.
	LambdaArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#S3BucketLogDestination: {
	// The Amazon Resource Name (ARN) of an AWS Key Management Service (KMS) key for encrypting audio log files stored in an S3 bucket.
	KmsKeyArn?: string & =~"^arn:[\\w\\-]+:kms:[\\w\\-]+:[\\d]{12}:(?:key\\/[\\w\\-]+|alias\\/[a-zA-Z0-9:\\/_\\-]{1,256})$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// The Amazon S3 key of the deployment package.
	LogPrefix: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The Amazon Resource Name (ARN) of an Amazon S3 bucket where audio log files are stored.
	S3BucketArn: string & =~"^arn:[\\w\\-]+:s3:::[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#Tag: {
	// A string used to identify this tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// A string containing the value for the tag
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TextLogDestination: {
	CloudWatch: #CloudWatchLogGroupLogDestination
}

#TextLogSetting: {
	Destination: #TextLogDestination
	Enabled: bool
}
