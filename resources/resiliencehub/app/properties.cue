package app

import "strings"

#Properties: {
	// Assessment execution schedule.
	AppAssessmentSchedule?: "Disabled" | "Daily"
	// A string containing full ResilienceHub app template body.
	AppTemplateBody: string & =~"^[\\w\\s:,-\\.'\\/{}\\[\\]:\"]+$" & strings.MinRunes(0) & strings.MaxRunes(409600)
	// App description.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	// The list of events you would like to subscribe and get notification for.
	EventSubscriptions?: [...#EventSubscription]
	// Name of the app.
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"
	PermissionModel?: #PermissionModel
	// Amazon Resource Name (ARN) of the Resiliency Policy.
	ResiliencyPolicyArn?: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.-]{0,1023}$"
	// An array of ResourceMapping objects.
	ResourceMappings: [...#ResourceMapping]
	Tags?: #TagMap
}

#EventSubscription: {
	// The type of event you would like to subscribe and get notification for.
	EventType: "ScheduledAssessmentFailure" | "DriftDetected"
	// Unique name to identify an event subscription.
	Name: string & strings.MaxRunes(256)
	// Amazon Resource Name (ARN) of the Amazon Simple Notification Service topic.
	SnsTopicArn?: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"
}

#PermissionModel: {
	// Defines a list of role Amazon Resource Names (ARNs) to be used in other accounts. These ARNs are used for querying purposes while importing resources and assessing your application.
	CrossAccountRoleArns?: [...#IamRoleArn]
	// Existing AWS IAM role name in the primary AWS account that will be assumed by AWS Resilience Hub Service Principle to obtain a read-only access to your application resources while running an assessment.
	InvokerRoleName?: string
	// Defines how AWS Resilience Hub scans your resources. It can scan for the resources by using a pre-existing role in your AWS account, or by using the credentials of the current IAM user.
	Type: "LegacyIAMUser" | "RoleBased"
}

#PhysicalResourceId: {
	AwsAccountId?: string & =~"^[0-9]{12}$"
	AwsRegion?: string & =~"^[a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]$"
	Identifier: string & strings.MinRunes(1) & strings.MaxRunes(255)
	Type: string & =~"Arn|Native"
}

#ResourceMapping: {
	EksSourceName?: string
	LogicalStackName?: string
	MappingType: string & =~"CfnStack|Resource|Terraform|EKS"
	PhysicalResourceId: #PhysicalResourceId
	ResourceName?: string & =~"^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"
	TerraformSourceName?: string
}
