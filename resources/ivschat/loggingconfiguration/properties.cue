package loggingconfiguration

import "strings"

#Properties: {
	DestinationConfiguration: #DestinationConfiguration
	// The name of the logging configuration. The value does not need to be unique.
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CloudWatchLogsDestinationConfiguration: {
	// Name of the Amazon CloudWatch Logs log group where chat activity will be logged.
	LogGroupName: string & =~"^[\\.\\-_/#A-Za-z0-9]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#DestinationConfiguration: {
	CloudWatchLogs?: #CloudWatchLogsDestinationConfiguration
	Firehose?: #FirehoseDestinationConfiguration
	S3?: #S3DestinationConfiguration
}

#FirehoseDestinationConfiguration: {
	// Name of the Amazon Kinesis Firehose delivery stream where chat activity will be logged.
	DeliveryStreamName: string & =~"^[a-zA-Z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#S3DestinationConfiguration: {
	// Name of the Amazon S3 bucket where chat activity will be logged.
	BucketName: string & =~"^[a-z0-9-.]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
