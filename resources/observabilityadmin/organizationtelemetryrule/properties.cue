package organizationtelemetryrule

import "strings"

#Properties: {
	Rule: #TelemetryRule
	// The name of the organization telemetry rule
	RuleName: string & =~"^[0-9A-Za-z-]+$" & strings.MinRunes(1) & strings.MaxRunes(100)
	// An array of key-value pairs to apply to this resource
	Tags?: [...#Tag]
}

#ActionCondition: {
	Action?: #Action
}

#AdvancedEventSelector: {
	// Contains all selector statements in an advanced event selector.
	FieldSelectors: [...#AdvancedFieldSelector]
	// An optional descriptive name for the advanced event selector
	Name?: string
}

#AdvancedFieldSelector: {
	// An operator that includes events that match the last few characters of the event record field specified as the value of Field.
	EndsWith?: [...string]
	// An operator that includes events that match the exact value of the event record field specified as the value of Field.
	Equals?: [...string]
	// A field in a CloudTrail event record on which to filter events to be logged
	Field?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// An operator that excludes events that match the last few characters of the event record field specified as the value of Field.
	NotEndsWith?: [...string]
	// An operator that excludes events that match the exact value of the event record field specified as the value of Field.
	NotEquals?: [...string]
	// An operator that excludes events that match the first few characters of the event record field specified as the value of Field.
	NotStartsWith?: [...string]
	// An operator that includes events that match the first few characters of the event record field specified as the value of Field.
	StartsWith?: [...string]
}

#CloudtrailParameters: {
	// Create fine-grained selectors for AWS CloudTrail management and data.
	AdvancedEventSelectors: [...#AdvancedEventSelector]
}

#Condition: {
	ActionCondition?: #ActionCondition
	LabelNameCondition?: #LabelNameCondition
}

#ELBLoadBalancerLoggingParameters: {
	// A delimiter to delineate log fields
	FieldDelimiter?: string
	OutputFormat?: "plain" | "json"
}

#FieldToMatch: {
	// The method with which to match this rule.
	Method?: string
	// The query string to find the resource to match this field to.
	QueryString?: string
	SingleHeader?: #SingleHeader
	// This is the URI path to match this rule to.
	UriPath?: string
}

#Filter: {
	Behavior?: #FilterBehavior
	Conditions?: #Conditions
	Requirement?: #FilterRequirement
}

#LabelNameCondition: {
	// The label name of the condition.
	LabelName?: string & =~"^[0-9A-Za-z_\\-:]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#LoggingFilter: {
	DefaultBehavior?: #FilterBehavior
	Filters?: #Filters
}

#RegionStatus: {
	// The AWS region code
	Region?: string
	// The ARN of the rule in this region
	RuleArn?: string
	// The replication status of the rule in this region
	Status?: string
}

#SingleHeader: {
	// The name of the header
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TelemetryDestinationConfiguration: {
	CloudtrailParameters?: #CloudtrailParameters
	DestinationPattern?: #DestinationPattern
	DestinationType?: #DestinationType
	ELBLoadBalancerLoggingParameters?: #ELBLoadBalancerLoggingParameters
	// Parameters for log delivery configuration
	LogDeliveryParameters?: {
		LogTypes?: [..."SECURITY_FINDING_LOGS"]
	}
	RetentionInDays?: #RetentionInDays
	VPCFlowLogParameters?: #VPCFlowLogParameters
	WAFLoggingParameters?: #WAFLoggingParameters
}

#TelemetryRule: {
	// When true, the rule is replicated to all supported regions
	AllRegions?: bool
	AllowFieldUpdates?: #AllowFieldUpdates
	DestinationConfiguration?: #TelemetryDestinationConfiguration
	// List of AWS region codes where the rule should be replicated
	Regions?: [...string]
	ResourceType: #ResourceType
	Scope?: #Scope
	SelectionCriteria?: #SelectionCriteria
	TelemetrySourceTypes?: #TelemetrySourceTypes
	TelemetryType: #TelemetryType
}

#VPCFlowLogParameters: {
	// The fields to include in the flow log record. If you omit this parameter, the flow log is created using the default format.
	LogFormat?: string
	// The maximum interval of time, in seconds, during which a flow of packets is captured and aggregated into a flow log record. Default is 600s.
	MaxAggregationInterval?: int
	// The type of traffic captured for the flow log. Default is ALL
	TrafficType?: string
}

#WAFLoggingParameters: {
	LogType?: #WAFLogType
	LoggingFilter?: #LoggingFilter
	// Fields not to be included in the logs.
	RedactedFields?: #RedactedFields
}
