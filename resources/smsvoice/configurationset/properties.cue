package configurationset

import "strings"

#Properties: {
	// The name to use for the configuration set.
	ConfigurationSetName?: string & =~"^[A-Za-z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The default sender ID to set for the ConfigurationSet.
	DefaultSenderId?: string & =~"^[A-Za-z0-9_-]+$"
	// An event destination is a location where you send message events.
	EventDestinations?: [...#EventDestination]
	// Set to true to enable message feedback.
	MessageFeedbackEnabled?: bool
	// The unique identifier for the protect configuration to be associated to the configuration set.
	ProtectConfigurationId?: string & =~"^[A-Za-z0-9_:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CloudWatchLogsDestination: {
	// The Amazon Resource Name (ARN) of an AWS Identity and Access Management role that is able to write event data to an Amazon CloudWatch destination.
	IamRoleArn: string & =~"^arn:\\S+$"
	// The name of the Amazon CloudWatch log group that you want to record events in.
	LogGroupArn: string & =~"^arn:\\S+$"
}

#EventDestination: {
	// An object that contains IamRoleArn and LogGroupArn associated with an Amazon CloudWatch event destination.
	CloudWatchLogsDestination?: #CloudWatchLogsDestination
	// When set to true events will be logged. By default this is set to true
	Enabled: bool
	// The name that identifies the event destination.
	EventDestinationName: string & =~"^[A-Za-z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// An object that contains IamRoleArn and DeliveryStreamArn associated with an Amazon Kinesis Firehose event destination.
	KinesisFirehoseDestination?: #KinesisFirehoseDestination
	// An array of event types that determine which events to log. If 'ALL' is used, then AWS End User Messaging SMS and Voice logs every event type.
	MatchingEventTypes: [...string]
	// An object that contains SNS TopicArn event destination.
	SnsDestination?: #SnsDestination
}

#KinesisFirehoseDestination: {
	// The Amazon Resource Name (ARN) of the delivery stream.
	DeliveryStreamArn: string & =~"^arn:\\S+$"
	// The Amazon Resource Name (ARN) of an AWS Identity and Access Management role that is able to write event data to an Amazon CloudWatch destination.
	IamRoleArn: string & =~"^arn:\\S+$"
}

#SnsDestination: {
	// The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish events to.
	TopicArn: string & =~"^arn:\\S+$"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
