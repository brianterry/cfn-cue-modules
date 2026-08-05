package usageplan

import "strings"

#Properties: {
	ApiStages?: [...#ApiStage]
	Description?: string
	Quota?: #QuotaSettings
	Tags?: [...#Tag]
	Throttle?: #ThrottleSettings
	UsagePlanName?: string
}

#ApiStage: {
	ApiId?: string
	Stage?: string
	Throttle?: {...}
}

#QuotaSettings: {
	Limit?: int & >=0
	Offset?: int & >=0
	Period?: string
}

#Tag: {
	// A string you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the specified tag key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#ThrottleSettings: {
	BurstLimit?: int & >=0
	RateLimit?: number & >=0
}
