package queue

import "strings"

#Properties: {
	AllowedStorageProfileIds?: [...string & =~"^sp-[0-9a-f]{32}$"]
	DefaultBudgetAction?: #DefaultQueueBudgetAction
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(100)
	DisplayName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	FarmId: string & =~"^farm-[0-9a-f]{32}$"
	JobAttachmentSettings?: #JobAttachmentSettings
	JobRunAsUser?: #JobRunAsUser
	RequiredFileSystemLocationNames?: [...string & =~"^[0-9A-Za-z ]*$" & strings.MinRunes(1) & strings.MaxRunes(64)]
	RoleArn?: string & =~"^arn:(aws[a-zA-Z-]*):iam::\\d{12}:role(/[!-.0-~]+)*/[\\w+=,.@-]+$"
	SchedulingConfiguration?: #SchedulingConfiguration
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#JobAttachmentSettings: {
	RootPrefix: string & strings.MinRunes(1) & strings.MaxRunes(63)
	S3BucketName: string & =~"(?!^(\\d+\\.)+\\d+$)(^(([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])\\.)*([a-z0-9]|[a-z0-9][a-z0-9\\-]*[a-z0-9])$)" & strings.MinRunes(3) & strings.MaxRunes(63)
}

#JobRunAsUser: {
	Posix?: #PosixUser
	RunAs: #RunAs
	Windows?: #WindowsUser
}

#PosixUser: {
	Group: string & =~"^(?:[a-z][a-z0-9-]{0,30})?$" & strings.MinRunes(0) & strings.MaxRunes(31)
	User: string & =~"^(?:[a-z][a-z0-9-]{0,30})?$" & strings.MinRunes(0) & strings.MaxRunes(31)
}

#PriorityBalancedSchedulingConfiguration: {
	RenderingTaskBuffer?: int & >=0 & <=1000
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#WeightedBalancedSchedulingConfiguration: {
	ErrorWeight?: number & >=-10000 & <=10000
	MaxPriorityOverride?: #SchedulingMaxPriorityOverride
	MinPriorityOverride?: #SchedulingMinPriorityOverride
	PriorityWeight?: number & >=0 & <=10000
	RenderingTaskBuffer?: int & >=0 & <=1000
	RenderingTaskWeight?: number & >=-10000 & <=10000
	SubmissionTimeWeight?: number & >=0 & <=10000
}

#WindowsUser: {
	PasswordArn: string & =~"^arn:(aws[a-zA-Z-]*):secretsmanager:[a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:\\d{12}:secret:[a-zA-Z0-9-/_+=.@]{1,2028}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	User: string & =~"^[^\"'/\\[\\]:;|=,+*?<>\\s]*$" & strings.MinRunes(0) & strings.MaxRunes(111)
}
