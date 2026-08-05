package rule

import "strings"

#Properties: {
	// The description of the retention rule.
	Description?: string & strings.MaxRunes(255)
	// Information about the exclude resource tags used to identify resources that are excluded by the retention rule.
	ExcludeResourceTags?: [...#ResourceTag]
	// Information about the retention rule lock configuration.
	LockConfiguration?: #UnlockDelay
	// Information about the resource tags used to identify resources that are retained by the retention rule.
	ResourceTags?: [...#ResourceTag]
	// The resource type retained by the retention rule.
	ResourceType: "EBS_SNAPSHOT" | "EC2_IMAGE" | "EBS_VOLUME"
	// Information about the retention period for which the retention rule is to retain resources.
	RetentionPeriod: #RetentionPeriod
	// The state of the retention rule. Only retention rules that are in the available state retain resources.
	Status?: string & =~"pending|available"
	// Information about the tags assigned to the retention rule.
	Tags?: [...#Tag]
}

#ResourceTag: {
	// The tag key of the resource.
	ResourceTagKey: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value of the resource
	ResourceTagValue: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#RetentionPeriod: {
	// The retention period unit of the rule
	RetentionPeriodUnit: "DAYS"
	// The retention period value of the rule.
	RetentionPeriodValue: int & >=1 & <=3650
}

#Tag: {
	// A unique identifier for the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// String which you can use to describe or define the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#UnlockDelay: {
	// The unit of time in which to measure the unlock delay. Currently, the unlock delay can be measure only in days.
	UnlockDelayUnit?: "DAYS"
	// The unlock delay period, measured in the unit specified for UnlockDelayUnit.
	UnlockDelayValue?: int & >=7 & <=30
}
