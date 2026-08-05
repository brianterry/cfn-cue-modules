package eventbridgeruletemplate

import "strings"

#Properties: {
	// A resource's optional description.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// Placeholder documentation for __listOfEventBridgeRuleTemplateTarget
	EventTargets?: [...#EventBridgeRuleTemplateTarget]
	EventType: #EventBridgeRuleTemplateEventType
	// An eventbridge rule template group's identifier. Can be either be its id or current name.
	GroupIdentifier?: string & =~"^[^\\s]+$"
	// A resource's name. Names must be unique within the scope of a resource type in a specific region.
	Name: string & =~"^[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: #TagMap
}

#EventBridgeRuleTemplateEventType: "MEDIALIVE_MULTIPLEX_ALERT" | "MEDIALIVE_MULTIPLEX_STATE_CHANGE" | "MEDIALIVE_CHANNEL_ALERT" | "MEDIALIVE_CHANNEL_INPUT_CHANGE" | "MEDIALIVE_CHANNEL_STATE_CHANGE" | "MEDIAPACKAGE_INPUT_NOTIFICATION" | "MEDIAPACKAGE_KEY_PROVIDER_NOTIFICATION" | "MEDIAPACKAGE_HARVEST_JOB_NOTIFICATION" | "SIGNAL_MAP_ACTIVE_ALARM" | "MEDIACONNECT_ALERT" | "MEDIACONNECT_SOURCE_HEALTH" | "MEDIACONNECT_OUTPUT_HEALTH" | "MEDIACONNECT_FLOW_STATUS_CHANGE"

#EventBridgeRuleTemplateTarget: {
	// Target ARNs must be either an SNS topic or CloudWatch log group.
	Arn: string & =~"^arn.+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}

#TagMap: {...}
