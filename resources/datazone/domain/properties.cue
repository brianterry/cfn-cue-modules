package domain

import "strings"

#Properties: {
	// The description of the Amazon DataZone domain.
	Description?: string
	// The domain execution role that is created when an Amazon DataZone domain is created. The domain execution role is created in the AWS account that houses the Amazon DataZone domain.
	DomainExecutionRole?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$"
	// The version of the domain.
	DomainVersion?: "V1" | "V2"
	// The identifier of the AWS Key Management Service (KMS) key that is used to encrypt the Amazon DataZone domain, metadata, and reporting data.
	KmsKeyIdentifier?: string & =~"^arn:aws(|-cn|-us-gov):kms:[a-zA-Z0-9-]*:[0-9]{12}:key/[a-zA-Z0-9-]{36}$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The name of the Amazon DataZone domain.
	Name: string
	// The service role of the domain that is created.
	ServiceRole?: string & =~"^arn:aws[^:]*:iam::\\d{12}:role(/[a-zA-Z0-9+=,.@_-]+)*/[a-zA-Z0-9+=,.@_-]+$"
	// The single-sign on configuration of the Amazon DataZone domain.
	SingleSignOn?: #SingleSignOn
	// The tags specified for the Amazon DataZone domain.
	Tags?: [...#Tag]
}

#AuthType: "IAM_IDC" | "DISABLED"

#DomainStatus: "CREATING" | "AVAILABLE" | "CREATION_FAILED" | "DELETING" | "DELETED" | "DELETION_FAILED"

#IdcInstanceArn: string & =~"arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}" & strings.MinRunes(10) & strings.MaxRunes(1224)

#SingleSignOn: {
	IdcInstanceArn?: #IdcInstanceArn
	Type?: #AuthType
	UserAssignment?: #UserAssignment
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#UserAssignment: "AUTOMATIC" | "MANUAL"
