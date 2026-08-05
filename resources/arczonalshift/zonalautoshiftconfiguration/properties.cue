package zonalautoshiftconfiguration

import "strings"

#Properties: {
	PracticeRunConfiguration?: #PracticeRunConfiguration
	ResourceIdentifier?: string & strings.MinRunes(8) & strings.MaxRunes(1024)
	ZonalAutoshiftStatus?: #ZonalAutoshiftStatus
}

#ControlCondition: {
	AlarmIdentifier: string & =~"^.*$" & strings.MinRunes(8) & strings.MaxRunes(1024)
	Type: #ControlConditionType
}

#ControlConditionType: string & =~"^[a-zA-Z]*$" & strings.MinRunes(8) & strings.MaxRunes(10)

#PracticeRunConfiguration: {
	BlockedDates?: [...string & =~"^[0-9]{4}-[0-9]{2}-[0-9]{2}$" & strings.MinRunes(10) & strings.MaxRunes(10)]
	BlockedWindows?: [...string & =~"^(Mon|Tue|Wed|Thu|Fri|Sat|Sun):[0-9]{2}:[0-9]{2}-(Mon|Tue|Wed|Thu|Fri|Sat|Sun):[0-9]{2}:[0-9]{2}$" & strings.MinRunes(19) & strings.MaxRunes(19)]
	BlockingAlarms?: [...#ControlCondition]
	OutcomeAlarms: [...#ControlCondition]
}

#ZonalAutoshiftStatus: "ENABLED"
