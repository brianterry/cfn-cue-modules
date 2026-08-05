package logging

import "strings"

#Properties: {
	// Your 12-digit account ID (used as the primary identifier for the CloudFormation resource).
	AccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// The log level to use. Valid values are: ERROR, WARN, INFO, DEBUG, or DISABLED.
	DefaultLogLevel: "ERROR" | "WARN" | "INFO" | "DEBUG" | "DISABLED"
	// Configurations for event-based logging that specifies which event types to log and their logging settings. Overrides account-level logging for the specified event
	EventConfigurations?: [...#EventConfiguration]
	// The ARN of the role that allows IoT to write to Cloudwatch logs.
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#EventConfiguration: {
	// The type of event to log. These include event types like Connect, Publish, and Disconnect.
	EventType: string & strings.MinRunes(1) & strings.MaxRunes(512)
	// CloudWatch Log Group for event-based logging. Specifies where log events should be sent. The log destination for event-based logging overrides default Log Group for the specified event type and applies to all resources associated with that event.
	LogDestination?: string & =~"^(?!aws/)[a-zA-Z0-9_\\-/.#]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The logging level for the specified event type. Determines the verbosity of log messages generated for this event type.
	LogLevel?: "ERROR" | "WARN" | "INFO" | "DEBUG" | "DISABLED"
}
