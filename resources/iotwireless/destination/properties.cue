package destination

import "strings"

#Properties: {
	// Destination description
	Description?: string & strings.MaxRunes(2048)
	// Destination expression
	Expression: string
	// Must be RuleName
	ExpressionType: "RuleName" | "MqttTopic" | "SnsTopic"
	// Unique name of destination
	Name: string & =~"[a-zA-Z0-9:_-]+" & strings.MaxRunes(128)
	// AWS role ARN that grants access
	RoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// A list of key-value pairs that contain metadata for the destination.
	Tags?: [...#Tag]
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
