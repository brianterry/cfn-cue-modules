package observabilityconfiguration

import "strings"

#Properties: {
	// A name for the observability configuration. When you use it for the first time in an AWS Region, App Runner creates revision number 1 of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.
	ObservabilityConfigurationName?: string & =~"[A-Za-z0-9][A-Za-z0-9\\-_]{3,31}" & strings.MinRunes(4) & strings.MaxRunes(32)
	// A list of metadata items that you can associate with your observability configuration resource. A tag is a key-value pair.
	Tags?: [...#Tag]
	// The configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing.
	TraceConfiguration?: #TraceConfiguration
}

#Tag: {
	Key?: string
	Value?: string
}

#TraceConfiguration: {
	// The implementation provider chosen for tracing App Runner services.
	Vendor: "AWSXRAY"
}
