package cisscanconfiguration

import "strings"

#Properties: {
	// Name of the scan
	ScanName: string & strings.MinRunes(1)
	Schedule: #Schedule
	SecurityLevel: #CisSecurityLevel
	Tags?: #CisTagMap
	Targets: #CisTargets
}

#CisTargets: {
	AccountIds: [...string & =~"^\\d{12}|ALL_ACCOUNTS|SELF$"]
	TargetResourceTags: #TargetResourceTags
}

#DailySchedule: {
	StartTime: #Time
}

#MonthlySchedule: {
	Day: #Day
	StartTime: #Time
}

#Schedule: {
	Daily?: #DailySchedule
	Monthly?: #MonthlySchedule
	OneTime?: #OneTimeSchedule
	Weekly?: #WeeklySchedule
}

#Time: {
	TimeOfDay: string & =~"^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$"
	TimeZone: string
}

#WeeklySchedule: {
	Days: #DaysList
	StartTime: #Time
}
