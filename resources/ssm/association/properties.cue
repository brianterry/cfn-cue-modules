package association

import "strings"

#Properties: {
	ApplyOnlyAtCronInterval?: bool
	// A role used by association to take actions on your behalf.
	AssociationDispatchAssumeRole?: string & =~"arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The name of the association.
	AssociationName?: string & =~"^[a-zA-Z0-9_\\-.]{3,128}$"
	AutomationTargetParameterName?: string & strings.MinRunes(1) & strings.MaxRunes(50)
	CalendarNames?: [...string]
	ComplianceSeverity?: "CRITICAL" | "HIGH" | "MEDIUM" | "LOW" | "UNSPECIFIED"
	// The version of the SSM document to associate with the target.
	DocumentVersion?: string & =~"([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"
	// The ID of the instance that the SSM document is associated with.
	InstanceId?: string & =~"(^i-(\\w{8}|\\w{17})$)|(^mi-\\w{17}$)"
	MaxConcurrency?: string & =~"^([1-9][0-9]{0,6}|[1-9][0-9]%|[1-9]%|100%)$"
	MaxErrors?: string & =~"^([1-9][0-9]{0,6}|[0]|[1-9][0-9]%|[0-9]%|100%)$"
	// The name of the SSM document.
	Name: string & =~"^[a-zA-Z0-9_\\-.:/]{3,200}$"
	OutputLocation?: #InstanceAssociationOutputLocation
	// Parameter values that the SSM document uses at runtime.
	Parameters?: {...}
	// A Cron or Rate expression that specifies when the association is applied to the target.
	ScheduleExpression?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	ScheduleOffset?: int & >=1 & <=6
	SyncCompliance?: "AUTO" | "MANUAL"
	// A key-value pair to associate with a resource.
	Tags?: [...#Tag]
	// The targets that the SSM document sends commands to.
	Targets?: [...#Target]
	WaitForSuccessTimeoutSeconds?: int & >=15 & <=172800
}

#InstanceAssociationOutputLocation: {
	S3Location?: #S3OutputLocation
}

#S3OutputLocation: {
	OutputS3BucketName?: #S3BucketName
	OutputS3KeyPrefix?: #S3KeyPrefix
	OutputS3Region?: #S3Region
}

#Tag: {
	// The name of the tag.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value of the tag.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Target: {
	Key: string & =~"^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]{1,128}$|resource-groups:Name"
	Values: [...string]
}
