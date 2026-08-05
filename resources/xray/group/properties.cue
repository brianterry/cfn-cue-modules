package group

import "strings"

#Properties: {
	// The filter expression defining criteria by which to group traces.
	FilterExpression?: string
	// The case-sensitive name of the new group. Names must be unique.
	GroupName: string & strings.MinRunes(1) & strings.MaxRunes(32)
	InsightsConfiguration?: #InsightsConfiguration
	Tags?: #Tags
}

#InsightsConfiguration: {
	// Set the InsightsEnabled value to true to enable insights or false to disable insights.
	InsightsEnabled?: bool
	// Set the NotificationsEnabled value to true to enable insights notifications. Notifications can only be enabled on a group with InsightsEnabled set to true.
	NotificationsEnabled?: bool
}

#Tag: {
	// The key name of the tag.
	Key: string
	// The value for the tag.
	Value: string
}

#Tags: [...#Tag]
