package workspace

import "strings"

#Properties: {
	// The AMP Workspace alert manager definition data
	AlertManagerDefinition?: string
	// AMP Workspace alias.
	Alias?: string & strings.MinRunes(0) & strings.MaxRunes(100)
	// KMS Key ARN used to encrypt and decrypt AMP workspace data.
	KmsKeyArn?: string & =~"^arn:aws[-a-z]*:kms:[-a-z0-9]+:[0-9]{12}:key/.+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	LoggingConfiguration?: #LoggingConfiguration
	QueryLoggingConfiguration?: #QueryLoggingConfiguration
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	WorkspaceConfiguration?: #WorkspaceConfiguration
}

#CloudWatchLogDestination: {
	// The ARN of the CloudWatch Logs log group
	LogGroupArn: string & strings.MinRunes(0) & strings.MaxRunes(512)
}

#Label: {
	// Name of the label
	Name: string & =~"^[a-zA-Z_][a-zA-Z0-9_]*$" & strings.MinRunes(1)
	// Value of the label
	Value: string & strings.MinRunes(1)
}

#LimitsPerLabelSet: {
	// An array of series labels
	LabelSet: [...#Label]
	Limits: #LimitsPerLabelSetEntry
}

#LimitsPerLabelSetEntry: {
	// The maximum number of active series that can be ingested for this label set
	MaxSeries?: int & >=0
}

#LoggingConfiguration: {
	// CloudWatch log group ARN
	LogGroupArn?: string & strings.MinRunes(0) & strings.MaxRunes(512)
}

#LoggingDestination: {
	CloudWatchLogs: #CloudWatchLogDestination
	Filters: #LoggingFilter
}

#LoggingFilter: {
	// Query logs with QSP above this limit are vended
	QspThreshold: int & >=0
}

#QueryLoggingConfiguration: {
	// The destinations configuration for query logging
	Destinations: [...#LoggingDestination]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WorkspaceConfiguration: {
	// An array of label set and associated limits
	LimitsPerLabelSets?: [...#LimitsPerLabelSet]
	// The time window in seconds for accepting out-of-order samples
	OutOfOrderTimeWindowInSeconds?: int & >=0
	// How many days that metrics are retained in the workspace
	RetentionPeriodInDays?: int & >=1
	// Duration in seconds to offset rule evaluation queries into the past
	RuleQueryOffsetInSeconds?: int & >=0
}
