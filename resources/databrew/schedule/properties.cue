package schedule

import "strings"

#Properties: {
	// Schedule cron
	CronExpression: string & strings.MinRunes(1) & strings.MaxRunes(512)
	JobNames?: [...#JobName]
	// Schedule Name
	Name: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
