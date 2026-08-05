package locationfsxwindows

import "strings"

#Properties: {
	CustomSecretConfig?: #CustomSecretConfig
	// The name of the Windows domain that the FSx for Windows server belongs to.
	Domain?: string & =~"^([A-Za-z0-9]+[A-Za-z0-9-.]*)*[A-Za-z0-9-]*[A-Za-z0-9]$" & strings.MaxRunes(253)
	// The Amazon Resource Name (ARN) for the FSx for Windows file system.
	FsxFilesystemArn?: string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):fsx:[a-z\\-0-9]*:[0-9]{12}:file-system/fs-.*$" & strings.MaxRunes(128)
	// The password of the user who has the permissions to access files and folders in the FSx for Windows file system.
	Password?: string & =~"^.{0,104}$" & strings.MaxRunes(104)
	// The ARNs of the security groups that are to use to configure the FSx for Windows file system.
	SecurityGroupArns: [...string & =~"^arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):ec2:[a-z\\-0-9]*:[0-9]{12}:security-group/.*$" & strings.MaxRunes(128)]
	// A subdirectory in the location's path.
	Subdirectory?: string & =~"^[a-zA-Z0-9_\\-\\+\\./\\(\\)\\$\\p{Zs}]+$" & strings.MaxRunes(4096)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The user who has the permissions to access files and folders in the FSx for Windows file system.
	User: string & strings.MaxRunes(104)
}

#CmkSecretConfig: {
	// Specifies the ARN for the customer-managed AWS KMS key used to encrypt the secret specified for SecretArn. DataSync provides this key to AWS Secrets Manager.
	KmsKeyArn?: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):kms:[a-z-0-9]+:[0-9]{12}:key/.*|)$" & strings.MaxRunes(2048)
	// Specifies the ARN for an AWS Secrets Manager secret, managed by DataSync.
	SecretArn?: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):secretsmanager:[a-z-0-9]+:[0-9]{12}:secret:.*|)$" & strings.MaxRunes(2048)
}

#CustomSecretConfig: {
	// Specifies the ARN for the AWS Identity and Access Management role that DataSync uses to access the secret specified for SecretArn.
	SecretAccessRoleArn: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):iam::[0-9]{12}:role/.*|)$" & strings.MaxRunes(2048)
	// Specifies the ARN for a customer created AWS Secrets Manager secret.
	SecretArn: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):secretsmanager:[a-z-0-9]+:[0-9]{12}:secret:.*|)$" & strings.MaxRunes(2048)
}

#ManagedSecretConfig: {
	// Specifies the ARN for an AWS Secrets Manager secret.
	SecretArn: string & =~"^(arn:(aws|aws-cn|aws-us-gov|aws-eusc|aws-iso|aws-iso-b):secretsmanager:[a-z-0-9]+:[0-9]{12}:secret:.*|)$" & strings.MaxRunes(2048)
}

#Tag: {
	// The key for an AWS resource tag.
	Key: string & =~"^[a-zA-Z0-9\\s+=._:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value for an AWS resource tag.
	Value: string & =~"^[a-zA-Z0-9\\s+=._:@/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
