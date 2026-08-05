package experiment

import "strings"

#Properties: {
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(160)
	MetricGoals: [...#MetricGoalObject]
	Name: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	OnlineAbConfig: #OnlineAbConfigObject
	Project: string & =~"([-a-zA-Z0-9._]*)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[-a-zA-Z0-9._]*)" & strings.MinRunes(0) & strings.MaxRunes(2048)
	RandomizationSalt?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(127)
	RemoveSegment?: bool
	// Start Experiment. Default is False
	RunningStatus?: #RunningStatusObject
	SamplingRate?: int & >=0 & <=100000
	Segment?: string & =~"([-a-zA-Z0-9._]*)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:segment/[-a-zA-Z0-9._]*)" & strings.MinRunes(0) & strings.MaxRunes(2048)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	Treatments: [...#TreatmentObject]
}

#MetricGoalObject: {
	DesiredChange: "INCREASE" | "DECREASE"
	// The JSON path to reference the entity id in the event.
	EntityIdKey: string
	// Event patterns have the same structure as the events they match. Rules use event patterns to select events. An event pattern either matches an event or it doesn't.
	EventPattern?: string
	MetricName: string & =~"^[\\S]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	UnitLabel?: string & =~".*" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The JSON path to reference the numerical metric value in the event.
	ValueKey: string
}

#OnlineAbConfigObject: {
	ControlTreatmentName?: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	TreatmentWeights?: [...#TreatmentToWeight]
}

#RunningStatusObject: {
	// Provide the analysis Completion time for an experiment
	AnalysisCompleteTime?: string
	// Provide CANCELLED or COMPLETED desired state when stopping an experiment
	DesiredState?: string & =~"^(CANCELLED|COMPLETED)"
	// Reason is a required input for stopping the experiment
	Reason?: string
	// Provide START or STOP action to apply on an experiment
	Status?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TreatmentObject: {
	Description?: string
	Feature: string & =~"([-a-zA-Z0-9._]*)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:.*)"
	TreatmentName: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	Variation: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#TreatmentToWeight: {
	SplitWeight: int & >=0 & <=100000
	Treatment: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
}
