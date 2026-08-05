package notificationconfiguration

import "strings"

#Properties: {
	AggregationDuration?: #AggregationDuration
	Description: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Name: string & =~"^[A-Za-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Tags?: #TagMap
}

#AggregationDuration: "LONG" | "SHORT" | "NONE"

#NotificationConfigurationStatus: "ACTIVE" | "PARTIALLY_ACTIVE" | "INACTIVE" | "DELETING"

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TagMap: [...#Tag]
