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

#AssessmentReportsDestination: {
	Destination?: #S3Url
	DestinationType?: #AssessmentReportDestinationType
}

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

#Role: {
	RoleArn?: #IamArn
	RoleType?: #RoleType
}

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
