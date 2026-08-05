package securityprofile

import "strings"

#Properties: {
	// A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here.
	AdditionalMetricsToRetainV2?: [...#MetricToRetain]
	// Specifies the destinations to which alerts are sent.
	AlertTargets?: {...}
	// Specifies the behaviors that, when violated by a device (thing), cause an alert.
	Behaviors?: [...#Behavior]
	// A structure containing the mqtt topic for metrics export.
	MetricsExportConfig?: {
		MqttTopic: string & strings.MinRunes(1) & strings.MaxRunes(512)
		RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	}
	// A description of the security profile.
	SecurityProfileDescription?: string & strings.MaxRunes(1000)
	// A unique identifier for the security profile.
	SecurityProfileName?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Metadata that can be used to manage the security profile.
	Tags?: [...#Tag]
	// A set of target ARNs that the security profile is attached to.
	TargetArns?: [...string & strings.MaxRunes(2048)]
}

#AlertTarget: {
	// The ARN of the notification target to which alerts are sent.
	AlertTargetArn: string & strings.MaxRunes(2048)
	// The ARN of the role that grants permission to send alerts to the notification target.
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#Behavior: {
	Criteria?: #BehaviorCriteria
	ExportMetric?: #ExportMetric
	// What is measured by the behavior.
	Metric?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	MetricDimension?: #MetricDimension
	// The name for the behavior.
	Name: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Manage Detect alarm SNS notifications by setting behavior notification to on or suppressed. Detect will continue to performing device behavior evaluations. However, suppressed alarms wouldn't be forwarded for SNS notification.
	SuppressAlerts?: bool
}

#BehaviorCriteria: {
	// The operator that relates the thing measured (metric) to the criteria (containing a value or statisticalThreshold).
	ComparisonOperator?: "less-than" | "less-than-equals" | "greater-than" | "greater-than-equals" | "in-cidr-set" | "not-in-cidr-set" | "in-port-set" | "not-in-port-set" | "in-set" | "not-in-set"
	// If a device is in violation of the behavior for the specified number of consecutive datapoints, an alarm occurs. If not specified, the default is 1.
	ConsecutiveDatapointsToAlarm?: int & >=1 & <=10
	// If an alarm has occurred and the offending device is no longer in violation of the behavior for the specified number of consecutive datapoints, the alarm is cleared. If not specified, the default is 1.
	ConsecutiveDatapointsToClear?: int & >=1 & <=10
	// Use this to specify the time duration over which the behavior is evaluated.
	DurationSeconds?: int
	MlDetectionConfig?: #MachineLearningDetectionConfig
	StatisticalThreshold?: #StatisticalThreshold
	Value?: #MetricValue
}

#ExportMetric: bool

#MachineLearningDetectionConfig: {
	// The sensitivity of anomalous behavior evaluation. Can be Low, Medium, or High.
	ConfidenceLevel?: "LOW" | "MEDIUM" | "HIGH"
}

#MetricDimension: {
	// A unique identifier for the dimension.
	DimensionName: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Defines how the dimensionValues of a dimension are interpreted.
	Operator?: "IN" | "NOT_IN"
}

#MetricToRetain: {
	ExportMetric?: #ExportMetric
	// What is measured by the behavior.
	Metric: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	MetricDimension?: #MetricDimension
}

#MetricValue: {
	// If the ComparisonOperator calls for a set of CIDRs, use this to specify that set to be compared with the metric.
	Cidrs?: [...string]
	// If the ComparisonOperator calls for a numeric value, use this to specify that (integer) numeric value to be compared with the metric.
	Count?: string
	// The numeral value of a metric.
	Number?: number
	// The numeral values of a metric.
	Numbers?: [...number]
	// If the ComparisonOperator calls for a set of ports, use this to specify that set to be compared with the metric.
	Ports?: [...int & >=0 & <=65535]
	// The string values of a metric.
	Strings?: [...string]
}

#StatisticalThreshold: {
	// The percentile which resolves to a threshold value by which compliance with a behavior is determined
	Statistic?: "Average" | "p0" | "p0.1" | "p0.01" | "p1" | "p10" | "p50" | "p90" | "p99" | "p99.9" | "p99.99" | "p100"
}

#Tag: {
	// The tag's key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
