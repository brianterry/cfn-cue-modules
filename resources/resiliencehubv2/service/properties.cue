package service

import "strings"

#Properties: {
	// Assertions associated with this service.
	Assertions?: [...#AssertionDefinition]
	// Systems associated with this service.
	AssociatedSystems?: [...#AssociatedSystem]
	// Dependency discovery state.
	DependencyDiscovery?: "ENABLED" | "DISABLED" | "INITIALIZING"
	// The description of the service.
	Description?: string & strings.MaxRunes(615)
	// Input sources for this service.
	InputSources?: [...#InputSourceDefinition]
	// The KMS key ID for encrypting service data.
	KmsKeyId?: string & =~"^((arn:aws(-[^:]+)?:kms:[a-zA-Z0-9-]*:[0-9]{12}:((key/[a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+)))|([a-zA-Z0-9-]{36})|(alias/[a-zA-Z0-9-_/]+))$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// The name of the service.
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"
	PermissionModel?: #PermissionModel
	// The ARN of the resilience policy to associate.
	PolicyArn?: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"
	// AWS regions for the service.
	Regions: [...string & =~"^[a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]$"]
	ReportConfiguration?: #ServiceReportConfiguration
	// Tags assigned to the service.
	Tags?: [...#Tag]
}

#AssertionDefinition: {
	// The text of the assertion.
	Text: string & strings.MinRunes(1) & strings.MaxRunes(1000)
}

#AssociatedSystem: {
	// The system ARN.
	SystemArn: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"
	// User journey IDs associated with this system.
	UserJourneyIds?: [...string & =~"^\\S{1,255}$"]
}

#CrossAccountRoleConfiguration: {
	// ARN of the cross-account IAM role.
	CrossAccountRoleArn: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):iam::[0-9]{12}:role\\/(([^\\/][\\x21-\\x7E]+\\/){1,511})?[A-Za-z0-9_+=,.@-]{1,64}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// External ID for cross-account access.
	ExternalId?: string
}

#DisasterRecoverySource: {
	PolicyName?: string
	Value?: string
}

#EffectivePolicyValues: {
	AvailabilitySlo?: #SloSource
	MultiAzDrApproach?: #DisasterRecoverySource
	MultiAzRpo?: #TargetSource
	MultiAzRto?: #TargetSource
	MultiRegionDrApproach?: #DisasterRecoverySource
	MultiRegionRpo?: #TargetSource
	MultiRegionRto?: #TargetSource
}

#EksSource: {
	// ARN of the EKS cluster.
	ClusterArn: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"
	// EKS namespaces.
	Namespaces: [...string]
}

#InputSourceDefinition: {
	ResourceConfiguration: #ResourceConfiguration
}

#PermissionModel: {
	// Cross-account role ARNs.
	CrossAccountRoleArns?: [...#CrossAccountRoleConfiguration]
	// Name of the invoker IAM role.
	InvokerRoleName: string & =~"^[A-Za-z0-9_+=,.@\\-]{1,64}$"
}

#ReportOutputConfiguration: {
	S3?: #S3ReportOutputConfiguration
}

#ResourceConfiguration: {
	// ARN of a CloudFormation stack.
	CfnStackArn?: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"
	// S3 URL of a design file.
	DesignFileS3Url?: string
	Eks?: #EksSource
	// Resource tags to discover resources.
	ResourceTags?: [...#ResourceTag]
	// URL of a Terraform state file.
	TfStateFileUrl?: string
}

#ResourceTag: {
	// Tag key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// Tag values.
	Values: [...string]
}

#S3ReportOutputConfiguration: {
	// Account ID of the bucket owner.
	BucketOwner: string & =~"^\\d{12}$"
	// S3 bucket path where reports will be written.
	BucketPath: string & =~"^(s3://)?[a-z0-9][a-z0-9.-]{1,61}[a-z0-9](/.*)?$" & strings.MinRunes(3) & strings.MaxRunes(512)
}

#ServiceReportConfiguration: {
	// Output destinations for generated reports.
	ReportOutput: [...#ReportOutputConfiguration]
}

#SloSource: {
	PolicyName?: string
	Value?: number
}

#Tag: {
	// The tag key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TargetSource: {
	PolicyName?: string
	Value?: int
}
