package eventrule

import "strings"

#Properties: {
	EventPattern?: string & strings.MinRunes(0) & strings.MaxRunes(4096)
	EventType: string & =~"^([a-zA-Z0-9 \\-\\(\\)])+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	NotificationConfigurationArn: string & =~"^arn:[a-z-]{3,10}:notifications::[0-9]{12}:configuration/[a-z0-9]{27}$"
	Regions: [...string & strings.MinRunes(2) & strings.MaxRunes(25)]
	Source: string & =~"^aws.([a-z0-9\\-])+$" & strings.MinRunes(1) & strings.MaxRunes(36)
}

#EventRuleStatus: "ACTIVE" | "INACTIVE" | "CREATING" | "UPDATING" | "DELETING"

#EventRuleStatusSummary: {
	Reason: string
	Status: #EventRuleStatus
}

#StatusSummaryByRegion: {...}

#Unit: {...}
