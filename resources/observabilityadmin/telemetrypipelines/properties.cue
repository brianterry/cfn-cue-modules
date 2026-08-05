package telemetrypipelines

import "strings"

#Properties: {
	Configuration: #TelemetryPipelineConfiguration
	Name?: string & =~"[a-z][a-z0-9\\-]+" & strings.MinRunes(3) & strings.MaxRunes(28)
	// An array of key-value pairs to apply to this resource
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TelemetryPipeline: {
	Arn?: string & =~"^arn:aws([a-z0-9\\-]+)?:([a-zA-Z0-9\\-]+):([a-z0-9\\-]+)?:([0-9]{12})?:(.+)$" & strings.MinRunes(1) & strings.MaxRunes(1011)
	Configuration?: #TelemetryPipelineConfiguration
	CreatedTimeStamp?: number
	LastUpdateTimeStamp?: number
	Name?: string & =~"[a-z][a-z0-9\\-]+" & strings.MinRunes(3) & strings.MaxRunes(28)
	Status?: #TelemetryPipelineStatus
	StatusReason?: #TelemetryPipelineStatusReason
	// An array of key-value pairs to apply to this resource
	Tags?: [...#Tag]
}

#TelemetryPipelineConfiguration: {
	Body: string & strings.MinRunes(1) & strings.MaxRunes(24000)
}

#TelemetryPipelineStatusReason: {
	Description?: string
}
