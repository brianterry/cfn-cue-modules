package refreshschedule

import "strings"

#Properties: {
	AwsAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	DataSetId?: string
	Schedule?: #RefreshScheduleMap
}

#RefreshScheduleMap: {
	RefreshType?: "FULL_REFRESH" | "INCREMENTAL_REFRESH"
	// <p>Information about the schedule frequency.</p>
	ScheduleFrequency?: {
		Interval?: "MINUTE15" | "MINUTE30" | "HOURLY" | "DAILY" | "WEEKLY" | "MONTHLY"
		RefreshOnDay?: {
			DayOfMonth?: string & strings.MinRunes(1) & strings.MaxRunes(128)
			DayOfWeek?: "SUNDAY" | "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY"
		}
		TimeOfTheDay?: string & strings.MinRunes(1) & strings.MaxRunes(128)
		TimeZone?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	}
	// <p>An unique identifier for the refresh schedule.</p>
	ScheduleId?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The date time after which refresh is to be scheduled</p>
	StartAfterDateTime?: string & strings.MinRunes(1) & strings.MaxRunes(128)
}
