package scheduledquery

import "strings"

#Properties: {
	Description?: string & strings.MaxRunes(1024)
	DestinationConfiguration?: #DestinationConfiguration
	ExecutionRoleArn: string
	LogGroupIdentifiers?: [...string]
	Name: string & =~"^[a-zA-Z0-9_\\-/.#]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	QueryLanguage: string
	QueryString: string & strings.MinRunes(0) & strings.MaxRunes(10000)
	ScheduleEndTime?: number
	ScheduleExpression: string & strings.MaxRunes(256)
	ScheduleStartTime?: number
	StartTimeOffset?: int
	State?: #ScheduledQueryState
	Tags?: [...{
		Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
	Timezone?: string & strings.MinRunes(1)
}

#DestinationConfiguration: {
	S3Configuration?: #S3Configuration
}

#S3Configuration: {
	DestinationIdentifier: string & =~"^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?"
	RoleArn: string
}

#ScheduledQueryState: "ENABLED" | "DISABLED"
