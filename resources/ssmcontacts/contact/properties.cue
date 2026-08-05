package contact

import "strings"

#Properties: {
	// Alias of the contact. String value with 20 to 256 characters. Only alphabetical, numeric characters, dash, or underscore allowed.
	Alias: string & =~"^[a-z0-9_\\-\\.]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// Name of the contact. String value with 3 to 256 characters. Only alphabetical, space, numeric characters, dash, or underscore allowed.
	DisplayName: string & =~"^[a-zA-Z0-9_\\-\\s]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The stages that an escalation plan or engagement plan engages contacts and contact methods in.
	Plan?: [...#Stage]
	Tags?: [...#Tag]
	// Contact type, which specify type of contact. Currently supported values: “PERSONAL”, “SHARED”, “OTHER“.
	Type: "PERSONAL" | "ESCALATION" | "ONCALL_SCHEDULE"
}

#ChannelTargetInfo: {
	// The Amazon Resource Name (ARN) of the contact channel.
	ChannelId: string
	// The number of minutes to wait to retry sending engagement in the case the engagement initially fails.
	RetryIntervalInMinutes: int
}

#ContactTargetInfo: {
	// The Amazon Resource Name (ARN) of the contact.
	ContactId: string
	// A Boolean value determining if the contact's acknowledgement stops the progress of stages in the plan.
	IsEssential: bool
}

#Stage: {
	// The time to wait until beginning the next stage.
	DurationInMinutes?: int
	// List of Rotation Ids to associate with Contact
	RotationIds?: [...string]
	// The contacts or contact methods that the escalation plan or engagement plan is engaging.
	Targets?: [...#Targets]
}

#Tag: {
	// The key name of the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Targets: {
	ChannelTargetInfo?: #ChannelTargetInfo
	ContactTargetInfo?: #ContactTargetInfo
}
