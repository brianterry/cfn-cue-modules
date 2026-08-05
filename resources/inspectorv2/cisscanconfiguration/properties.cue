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

#CisSecurityLevel: "LEVEL_1" | "LEVEL_2"

#CisTagMap: {...}

#CisTargets: {
	AccountIds: [...string & =~"^\\d{12}|ALL_ACCOUNTS|SELF$"]
	TargetResourceTags: #TargetResourceTags
}

#DailySchedule: {
	StartTime: #Time
}

#Day: "MON" | "TUE" | "WED" | "THU" | "FRI" | "SAT" | "SUN"

#DaysList: [...#Day]

#MonthlySchedule: {
	Day: #Day
	StartTime: #Time
}

#OneTimeSchedule: {...}

#Schedule: {
	Daily?: #DailySchedule
	Monthly?: #MonthlySchedule
	OneTime?: #OneTimeSchedule
	Weekly?: #WeeklySchedule
}

#TagValueList: [...string]

#TargetResourceTags: string

#Time: {
	TimeOfDay: string & =~"^([0-1]?[0-9]|2[0-3]):[0-5][0-9]$"
	TimeZone: string
}

#WeeklySchedule: {
	Days: #DaysList
	StartTime: #Time
}
