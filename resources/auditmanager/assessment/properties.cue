package assessment

import "strings"

#Properties: {
	AssessmentReportsDestination?: #AssessmentReportsDestination
	AwsAccount?: #AWSAccount
	// The list of delegations.
	Delegations?: [...#Delegation]
	Description?: #AssessmentDescription
	FrameworkId?: #FrameworkId
	Name?: #AssessmentName
	// The list of roles for the specified assessment.
	Roles?: [...#Role]
	Scope?: #Scope
	Status?: #AssessmentStatus
	// The tags associated with the assessment.
	Tags?: [...#Tag]
}

#AWSAccount: {
	EmailAddress?: #EmailAddress
	Id?: #AccountId
	Name?: #AccountName
}

#AWSService: {
	ServiceName?: #AWSServiceName
}

#AWSServiceName: string

#AccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)

#AccountName: string & strings.MinRunes(1) & strings.MaxRunes(50)

#AssessmentArn: string & =~"^arn:.*:auditmanager:.*" & strings.MinRunes(20) & strings.MaxRunes(2048)

#AssessmentDescription: string

#AssessmentName: string & =~"^[a-zA-Z0-9-_\\.]+$" & strings.MinRunes(1) & strings.MaxRunes(127)

#AssessmentReportDestinationType: "S3"

#AssessmentReportsDestination: {
	Destination?: #S3Url
	DestinationType?: #AssessmentReportDestinationType
}

#AssessmentStatus: "ACTIVE" | "INACTIVE"

#ControlSetId: string & =~"^[\\w\\W\\s\\S]*$" & strings.MinRunes(1) & strings.MaxRunes(300)

#CreatedBy: string & =~"^arn:.*:*:.*" & strings.MinRunes(20) & strings.MaxRunes(2048)

#Delegation: {
	AssessmentId?: #UUID
	AssessmentName?: #AssessmentName
	Comment?: #DelegationComment
	ControlSetId?: #ControlSetId
	CreatedBy?: #CreatedBy
	CreationTime?: #Timestamp
	Id?: #UUID
	LastUpdated?: #Timestamp
	RoleArn?: #IamArn
	RoleType?: #RoleType
	Status?: #DelegationStatus
}

#DelegationComment: string & =~"^[\\w\\W\\s\\S]*$" & strings.MaxRunes(350)

#DelegationStatus: "IN_PROGRESS" | "UNDER_REVIEW" | "COMPLETE"

#EmailAddress: string & =~"^.*@.*$" & strings.MinRunes(1) & strings.MaxRunes(320)

#FrameworkId: string & =~"^([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}|.*\\S.*)$" & strings.MinRunes(32) & strings.MaxRunes(36)

#IamArn: string & =~"^arn:.*:iam:.*" & strings.MinRunes(20) & strings.MaxRunes(2048)

#Role: {
	RoleArn?: #IamArn
	RoleType?: #RoleType
}

#RoleType: "PROCESS_OWNER" | "RESOURCE_OWNER"

#S3Url: string

#Scope: {
	// The AWS accounts included in scope.
	AwsAccounts?: [...#AWSAccount]
	// The AWS services included in scope.
	AwsServices?: [...#AWSService]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Timestamp: number

#UUID: string & =~"^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$" & strings.MinRunes(36) & strings.MaxRunes(36)
