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

#EventBridgeRuleTemplateTarget: {
	// Target ARNs must be either an SNS topic or CloudWatch log group.
	Arn: string & =~"^arn.+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
}
