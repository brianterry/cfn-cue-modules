package rotation

import "strings"

#Properties: {
	// Members of the rotation
	ContactIds: [...string]
	// Name of the Rotation
	Name: string & =~"^[a-zA-Z0-9_]*$"
	Recurrence: #RecurrenceSettings
	// Start time of the first shift of Oncall Schedule
	StartTime: string & =~"^(\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2})$"
	Tags?: [...#Tag]
	// TimeZone Identifier for the Oncall Schedule
	TimeZoneId: string
}

#CoverageTime: {
	EndTime: #HandOffTime
	StartTime: #HandOffTime
}

#DailySetting: {
	HandOffTime: #HandOffTime
}

#DayOfWeek: "MON" | "TUE" | "WED" | "THU" | "FRI" | "SAT" | "SUN"

#HandOffTime: string & =~"^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"

#MonthlySetting: {
	// The day of the month when monthly recurring on-call rotations begin.
	DayOfMonth: int & >=1 & <=31
	HandOffTime: #HandOffTime
}

#RecurrenceSettings: {
	// Information about on-call rotations that recur daily.
	DailySettings?: [...#HandOffTime]
	// Information about on-call rotations that recur monthly.
	MonthlySettings?: [...#MonthlySetting]
	// Number of Oncalls per shift.
	NumberOfOnCalls?: int & >=1
	// The number of days, weeks, or months a single rotation lasts.
	RecurrenceMultiplier?: int & >=1 & <=100
	// Information about the days of the week included in on-call rotation coverage.
	ShiftCoverages?: [...#ShiftCoverage]
	// Information about on-call rotations that recur weekly.
	WeeklySettings?: [...#WeeklySetting]
}

#ShiftCoverage: {
	// Information about when an on-call shift begins and ends.
	CoverageTimes: [...#CoverageTime]
	DayOfWeek: #DayOfWeek
}

#Tag: {
	// The key name of the tag
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WeeklySetting: {
	DayOfWeek: #DayOfWeek
	HandOffTime: #HandOffTime
}
