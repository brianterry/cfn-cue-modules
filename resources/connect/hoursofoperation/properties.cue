package hoursofoperation

import "strings"

#Properties: {
	// List of child hours of operations.
	ChildHoursOfOperations?: [...#HoursOfOperationsIdentifier]
	// Configuration information for the hours of operation: day, start time, and end time.
	Config: [...#HoursOfOperationConfig]
	// The description of the hours of operation.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(250)
	// One or more hours of operation overrides assigned to an hour of operation.
	HoursOfOperationOverrides?: [...#HoursOfOperationOverride]
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The name of the hours of operation.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// List of parent hours of operations.
	ParentHoursOfOperations?: [...#HoursOfOperationsIdentifier]
	// One or more tags.
	Tags?: [...#Tag]
	// The time zone of the hours of operation.
	TimeZone: string
}

#HoursOfOperationConfig: {
	// The day that the hours of operation applies to.
	Day: "SUNDAY" | "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY"
	// The end time that your contact center closes.
	EndTime: #HoursOfOperationTimeSlice
	// The start time that your contact center opens.
	StartTime: #HoursOfOperationTimeSlice
}

#HoursOfOperationOverride: {
	EffectiveFrom: #EffectiveFrom
	EffectiveTill: #EffectiveTill
	HoursOfOperationOverrideId?: #HoursOfOperationOverrideId
	OverrideConfig: #OverrideConfig
	OverrideDescription?: #OverrideDescription
	OverrideName: #OverrideName
	OverrideType?: #OverrideType
	RecurrenceConfig?: #RecurrenceConfig
}

#HoursOfOperationOverrideConfig: {
	// The day that the hours of operation override applies to.
	Day: "SUNDAY" | "MONDAY" | "TUESDAY" | "WEDNESDAY" | "THURSDAY" | "FRIDAY" | "SATURDAY"
	// The new end time that your contact center closes for the overriden days.
	EndTime: #OverrideTimeSlice
	// The new start time that your contact center opens for the overriden days.
	StartTime: #OverrideTimeSlice
}

#HoursOfOperationTimeSlice: {
	// The hours.
	Hours: int & >=0 & <=23
	// The minutes.
	Minutes: int & >=0 & <=59
}

#HoursOfOperationsIdentifier: {
	// The identifier for the hours of operation.
	Id: string
	// The name of the hours of operation.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(127)
}

#OverrideTimeSlice: {
	// The hours.
	Hours: int & >=0 & <=23
	// The minutes.
	Minutes: int & >=0 & <=59
}

#RecurrenceConfig: {
	RecurrencePattern: #RecurrencePattern
}

#RecurrencePattern: {
	ByMonth?: #MonthList
	ByMonthDay?: #MonthDayList
	ByWeekdayOccurrence?: [...int & >=-1 & <=4]
	Frequency?: #RecurrenceFrequency
	Interval?: int & >=1 & <=6
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is maximum of 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MaxRunes(256)
}
