package launch

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(160)
	// Start or Stop Launch Launch. Default is not started.
	ExecutionStatus?: #ExecutionStatusObject
	Groups: [...#LaunchGroupObject]
	MetricMonitors?: [...#MetricDefinitionObject]
	Name: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	Project: string & =~"([-a-zA-Z0-9._]*)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*)" & strings.MinRunes(0) & strings.MaxRunes(2048)
	RandomizationSalt?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(127)
	ScheduledSplitsConfig: [...#StepConfig]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#ExecutionStatusObject: {
	// Provide CANCELLED or COMPLETED as the launch desired state. Defaults to Completed if not provided.
	DesiredState?: string
	// Provide a reason for stopping the launch. Defaults to empty if not provided.
	Reason?: string
	// Provide START or STOP action to apply on a launch
	Status: string
}

#GroupToWeight: {
	GroupName: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	SplitWeight: int
}

#LaunchGroupObject: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(160)
	Feature: string
	GroupName: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	Variation: string
}

#MetricDefinitionObject: {
	// The JSON path to reference the entity id in the event.
	EntityIdKey: string
	// Event patterns have the same structure as the events they match. Rules use event patterns to select events. An event pattern either matches an event or it doesn't.
	EventPattern?: string
	MetricName: string & =~"^[\\S]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	UnitLabel?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The JSON path to reference the numerical metric value in the event.
	ValueKey: string
}

#SegmentOverride: {
	EvaluationOrder: int
	Segment: string & =~"([-a-zA-Z0-9._]*)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:segment/[-a-zA-Z0-9._]*)" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Weights: [...#GroupToWeight]
}

#StepConfig: {
	GroupWeights: [...#GroupToWeight]
	SegmentOverrides?: [...#SegmentOverride]
	StartTime: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
