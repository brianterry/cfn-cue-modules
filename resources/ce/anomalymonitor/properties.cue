package anomalymonitor

import "strings"

#Properties: {
	// The dimensions to evaluate
	MonitorDimension?: "SERVICE" | "LINKED_ACCOUNT" | "TAG" | "COST_CATEGORY"
	// The name of the monitor.
	MonitorName: string & =~"[\\S\\s]*" & strings.MinRunes(0) & strings.MaxRunes(1024)
	MonitorSpecification?: string
	MonitorType: "DIMENSIONAL" | "CUSTOM"
	// Tags to assign to monitor.
	ResourceTags?: [...#ResourceTag]
}

#Arn: string & =~"^arn:aws[-a-z0-9]*:[a-z0-9]+:[-a-z0-9]*:[0-9]{12}:[-a-zA-Z0-9/:_]+$"

#ResourceTag: {
	// The key name for the tag.
	Key: string & =~"^(?!aws:).*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
