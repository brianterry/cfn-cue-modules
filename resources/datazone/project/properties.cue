package project

import "strings"

#Properties: {
	// The description of the Amazon DataZone project.
	Description?: string & strings.MaxRunes(2048)
	// The ID of the Amazon DataZone domain in which this project is created.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The ID of the domain unit.
	DomainUnitId?: string & =~"^[a-z0-9_\\-]+$"
	// The glossary terms that can be used in this Amazon DataZone project.
	GlossaryTerms?: [...string & =~"^[a-zA-Z0-9_-]{1,36}$"]
	// The project membership assignments.
	MembershipAssignments?: [...#ProjectMembershipAssignment]
	// The name of the Amazon DataZone project.
	Name: string & =~"^[\\w -]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// The project category.
	ProjectCategory?: string
	// The project execution role ARN.
	ProjectExecutionRole?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role/[\\w+=,.@/-]+$"
	// The project profile ID.
	ProjectProfileId?: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	// The project profile version to which the project should be updated. You can only specify the following string for this parameter: latest.
	ProjectProfileVersion?: string
	// The resource tags of the project.
	ResourceTags?: [...#ResourceTag]
	// The user parameters of the project.
	UserParameters?: [...#EnvironmentConfigurationUserParameter]
}

#EnvironmentConfigurationUserParameter: {
	EnvironmentConfigurationName?: string & =~"^[\\w -]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	EnvironmentId?: string & =~"^[a-zA-Z0-9_-]{1,36}$"
	EnvironmentParameters?: [...#EnvironmentParameter]
}

#EnvironmentDeploymentDetails: {
	EnvironmentFailureReasons?: #EnvironmentFailureReasons
	OverallDeploymentStatus?: #OverallDeploymentStatus
}

#EnvironmentError: {
	Code?: string
	Message: string
}

#EnvironmentFailureReasons: {...}

#EnvironmentParameter: {
	Name?: string
	Value?: string
}

#EnvironmentResolvedAccount: {
	AwsAccountId: string & =~"^\\d{12}$"
	RegionName: string & =~"^[a-z]{2}-[a-z]{4,10}-\\d$"
	SourceAccountPoolId: string & =~"^[a-zA-Z0-9_-]{1,36}$"
}

#Member: {
	GroupIdentifier?: string
	UserIdentifier?: string
}

#OverallDeploymentStatus: "PENDING_DEPLOYMENT" | "IN_PROGRESS" | "SUCCESSFUL" | "FAILED_VALIDATION" | "FAILED_DEPLOYMENT"

#ProjectDeletionError: {
	// Project Deletion Error Code
	Code?: string
	// Project Deletion Error Message
	Message?: string
}

#ProjectMembershipAssignment: {
	Designation: #UserDesignation
	Member: #Member
}

#ProjectStatus: "ACTIVE" | "MOVING" | "DELETING" | "DELETE_FAILED" | "UPDATING" | "UPDATE_FAILED"

#ResourceTag: {
	Key: string & =~"^[\\w \\.:/=+@-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[\\w \\.:/=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: {...}

#UserDesignation: "PROJECT_OWNER" | "PROJECT_CONTRIBUTOR"
