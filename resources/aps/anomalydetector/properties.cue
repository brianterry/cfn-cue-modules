package anomalydetector

import "strings"

#Properties: {
	// The AnomalyDetector alias.
	Alias: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Determines the anomaly detector's algorithm and its configuration.
	Configuration: #AnomalyDetectorConfiguration
	// The AnomalyDetector period of detection and metric generation.
	EvaluationIntervalInSeconds?: int
	// An array of key-value pairs to provide meta-data.
	Labels?: [...#Label]
	// The action to perform when running the expression returns no data.
	MissingDataAction?: #MissingDataAction
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// Required to identify a specific APS Workspace associated with this Anomaly Detector.
	Workspace: string & =~"^arn:(aws|aws-us-gov|aws-cn):aps:[a-z0-9-]+:[0-9]+:workspace/[a-zA-Z0-9-]+$"
}

#AnomalyDetectorConfiguration: {
	RandomCutForest: #RandomCutForestConfiguration
}

#IgnoreNearExpected: {
	Amount?: number
	Ratio?: number
}

#Label: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#MissingDataAction: {
	MarkAsAnomaly?: bool
	Skip?: bool
}

#RandomCutForestConfiguration: {
	IgnoreNearExpectedFromAbove?: #IgnoreNearExpected
	IgnoreNearExpectedFromBelow?: #IgnoreNearExpected
	Query: string & strings.MinRunes(1)
	SampleSize?: int & >=256 & <=1024
	ShingleSize?: int & >=2 & <=1024
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
