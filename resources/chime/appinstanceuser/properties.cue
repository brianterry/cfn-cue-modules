package appinstanceuser

import "strings"

#Properties: {
	AppInstanceArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(5) & strings.MaxRunes(1600)
	AppInstanceUserId: string & =~"^[A-Za-z0-9]([A-Za-z0-9\\:\\-\\_\\.\\@]{0,62}[A-Za-z0-9])?$" & strings.MinRunes(1) & strings.MaxRunes(64)
	ExpirationSettings?: #ExpirationSettings
	Metadata?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(1024)
	Name?: string & strings.MinRunes(0) & strings.MaxRunes(256)
	Tags?: [...#Tag]
}

#ExpirationSettings: {
	ExpirationCriterion: "CREATED_TIMESTAMP"
	ExpirationDays: int & >=1 & <=5475
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
