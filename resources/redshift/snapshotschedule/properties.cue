package snapshotschedule

import "strings"

#Properties: {
	// The definition of the snapshot schedule. The definition is made up of schedule expressions, for example "cron(30 12 *)" or "rate(12 hours)".
	ScheduleDefinitions: [...string]
	// The description of the snapshot schedule.
	ScheduleDescription?: string
	// A unique identifier for the snapshot schedule. Only alphanumeric characters are allowed.
	ScheduleIdentifier: string
	// An optional set of tags for the snapshot schedule.
	Tags?: [...#Tag]
}

#Tag: {
	// The key, or name, for the resource tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the resource tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(255)
}
