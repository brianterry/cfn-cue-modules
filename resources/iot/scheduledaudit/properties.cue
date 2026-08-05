package scheduledaudit

import "strings"

#Properties: {
	// The day of the month on which the scheduled audit takes place. Can be 1 through 31 or LAST. This field is required if the frequency parameter is set to MONTHLY.
	DayOfMonth?: string & =~"^([1-9]|[12][0-9]|3[01])$|^LAST$|^UNSET_VALUE$"
	// The day of the week on which the scheduled audit takes place. Can be one of SUN, MON, TUE,WED, THU, FRI, or SAT. This field is required if the frequency parameter is set to WEEKLY or BIWEEKLY.
	DayOfWeek?: "SUN" | "MON" | "TUE" | "WED" | "THU" | "FRI" | "SAT" | "UNSET_VALUE"
	// How often the scheduled audit takes place. Can be one of DAILY, WEEKLY, BIWEEKLY, or MONTHLY.
	Frequency: "DAILY" | "WEEKLY" | "BIWEEKLY" | "MONTHLY"
	// The name you want to give to the scheduled audit.
	ScheduledAuditName?: string & =~"[a-zA-Z0-9:_-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// Which checks are performed during the scheduled audit. Checks must be enabled for your account.
	TargetCheckNames: [...string]
}

#Tag: {
	// The tag's key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
