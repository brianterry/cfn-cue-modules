package logalarm

import "strings"

#Properties: {
	// The number of log lines to include in alarm notifications. Valid values are 0 to 50.
	ActionLogLineCount?: int & >=0 & <=50
	// The ARN of the IAM role that grants CloudWatch permissions to fetch log lines for alarm notifications. Required when ActionLogLineCount is greater than 0.
	ActionLogLineRoleArn?: string
	// Indicates whether actions should be executed during any changes to the alarm state. The default is TRUE.
	ActionsEnabled?: bool
	// The list of actions to execute when this alarm transitions into an ALARM state from any other state.
	AlarmActions?: [...string]
	// The description of the log alarm.
	AlarmDescription?: string
	// The name of the log alarm.
	AlarmName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The arithmetic operation to use when comparing the specified threshold and the query results. Valid values are GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, and LessThanOrEqualToThreshold.
	ComparisonOperator: string
	// The actions to execute when this alarm transitions to the INSUFFICIENT_DATA state from any other state.
	InsufficientDataActions?: [...string]
	// The actions to execute when this alarm transitions to the OK state from any other state.
	OKActions?: [...string]
	// The number of query results that must be breaching to trigger the alarm.
	QueryResultsToAlarm: int
	// The number of query results over which data is compared to the specified threshold.
	QueryResultsToEvaluate: int
	// The scheduled query configuration for the log alarm.
	ScheduledQueryConfiguration: #ScheduledQueryConfiguration
	// A list of key-value pairs to associate with the log alarm.
	Tags?: [...#Tag]
	// The value to compare against the results of the scheduled query evaluation.
	Threshold: number
	// Sets how this alarm is to handle missing data points. Valid values are breaching, notBreaching, ignore, and missing.
	TreatMissingData?: string
}

#ScheduleConfiguration: {
	// The number of seconds into the past to end the query window. Must be a non-negative value and cannot exceed 2592000 seconds (30 days).
	EndTimeOffset?: int & >=0 & <=2592000
	// The expression that defines when the scheduled query runs, e.g. rate(1 minute).
	ScheduleExpression: string
	// The number of seconds into the past to start the query window. Must be a positive value and cannot exceed 2592000 seconds (30 days).
	StartTimeOffset: int & >=1 & <=2592000
}

#ScheduledQueryConfiguration: {
	// The aggregation expression for the scheduled query, e.g. count(*) or avg(latency) by host.
	AggregationExpression: string & strings.MaxRunes(2048)
	// The log groups to query.
	LogGroupIdentifiers?: [...string]
	// The query string to execute against the specified log groups.
	QueryString: string
	// The schedule configuration.
	ScheduleConfiguration: #ScheduleConfiguration
	// The ARN of the IAM role that grants permissions to execute the scheduled query.
	ScheduledQueryRoleARN: string
	// A list of key-value pairs to associate with the scheduled query that backs the log alarm.
	Tags?: [...#Tag]
}

#Tag: {
	// A unique identifier for the tag. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the specified tag key.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
