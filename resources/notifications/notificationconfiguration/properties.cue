package notificationconfiguration

import "strings"

#Properties: {
	AggregationDuration?: #AggregationDuration
	Description: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Name: string & =~"^[A-Za-z0-9_\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Tags?: #TagMap
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
