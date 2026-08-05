package notificationrule

import "strings"

#Properties: {
	CreatedBy?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	DetailType: "BASIC" | "FULL"
	EventTypeId?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	EventTypeIds: [...string & strings.MinRunes(1) & strings.MaxRunes(200)]
	Name: string & =~"[A-Za-z0-9\\-_ ]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	Resource: string & =~"^arn:aws[^:\\s]*:[^:\\s]*:[^:\\s]*:[0-9]{12}:[^\\s]+$"
	Status?: "ENABLED" | "DISABLED"
	Tags?: {...}
	TargetAddress?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	Targets: [...#Target]
}

#Target: {
	TargetAddress: string
	TargetType: string
}
