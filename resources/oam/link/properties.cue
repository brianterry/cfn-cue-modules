package link

import "strings"

#Properties: {
	LabelTemplate?: string & strings.MinRunes(1) & strings.MaxRunes(64)
	LinkConfiguration?: #LinkConfiguration
	ResourceTypes: [...#ResourceType]
	SinkIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Tags to apply to the link
	Tags?: {...}
}

#LinkConfiguration: {
	LogGroupConfiguration?: #LinkFilter
	MetricConfiguration?: #LinkFilter
}

#LinkFilter: {
	Filter: string & strings.MinRunes(1) & strings.MaxRunes(2000)
}

#ResourceType: "AWS::CloudWatch::Metric" | "AWS::Logs::LogGroup" | "AWS::XRay::Trace" | "AWS::ApplicationInsights::Application" | "AWS::InternetMonitor::Monitor" | "AWS::ApplicationSignals::Service" | "AWS::ApplicationSignals::ServiceLevelObjective"
