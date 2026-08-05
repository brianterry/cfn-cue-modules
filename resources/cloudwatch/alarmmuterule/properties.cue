package alarmmuterule

import "strings"

#Properties: {
	// The description of the AlarmMuteRule
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The date, with the same timezone offset as "ScheduleTimezone" after which the alarm mute rule will be expired.
	ExpireDate?: string
	// Targets to be muted
	MuteTargets?: {
		AlarmNames: [...#AlarmName]
	}
	// The name of the AlarmMuteRule
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The rule for the mute
	Rule: {
		Schedule: {
			Duration: string & strings.MinRunes(1) & strings.MaxRunes(50)
			Expression: string & strings.MinRunes(1) & strings.MaxRunes(256)
			Timezone?: string & strings.MinRunes(1) & strings.MaxRunes(50)
		}
	}
	// The date, with the same timezone offset as "ScheduleTimezone", after which the alarm mute rule will become active.
	StartDate?: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
