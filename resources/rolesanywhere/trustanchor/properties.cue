package trustanchor

import "strings"

#Properties: {
	Enabled?: bool
	Name: string
	NotificationSettings?: [...#NotificationSetting]
	Source: #Source
	Tags?: [...#Tag]
}

#NotificationSetting: {
	Channel?: #NotificationChannel
	Enabled: bool
	Event: #NotificationEvent
	Threshold?: number & >=1 & <=360
}

#Source: {
	SourceData: #SourceData
	SourceType: #TrustAnchorType
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
