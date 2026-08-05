package alarmmuterule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The current status of the AlarmMuteRule
	Status: "SCHEDULED" | "ACTIVE" | "EXPIRED"
	// The last update timestamp of the alarm mute schedule
	LastUpdatedTimestamp: string
	// The mute type of the alarm mute
	MuteType: string
	// Amazon Resource Name (ARN) of the AlarmMuteRule
	Arn: string & strings.MinRunes(1) & strings.MaxRunes(1600)
}
