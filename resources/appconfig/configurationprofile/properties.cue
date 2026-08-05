package configurationprofile

import "strings"

#Properties: {
	// The application ID.
	ApplicationId: string & =~"[a-z0-9]{4,7}"
	// On resource deletion this controls whether the Deletion Protection check should be applied, bypassed, or (the default) whether the behavior should be controlled by the account-level Deletion Protection setting. See https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html
	DeletionProtectionCheck?: "ACCOUNT_DEFAULT" | "APPLY" | "BYPASS"
	// A description of the configuration profile.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The AWS Key Management Service key identifier (key ID, key alias, or key ARN) provided when the resource was created or updated.
	KmsKeyIdentifier?: string
	// A URI to locate the configuration. You can specify the AWS AppConfig hosted configuration store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object.
	LocationUri: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// A name for the configuration profile.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ARN of an IAM role with permission to access the configuration at the specified LocationUri.
	RetrievalRoleArn?: string & =~"^((arn):(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov|aws-eusc):(iam)::\\d{12}:role[/].*)$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Metadata to assign to the configuration profile. Tags help organize and categorize your AWS AppConfig resources. Each tag consists of a key and an optional value, both of which you define.
	Tags?: [...#Tags]
	// The type of configurations contained in the profile. When calling this API, enter one of the following values for Type: AWS.AppConfig.FeatureFlags, AWS.Freeform
	Type?: string & =~"^[a-zA-Z\\.]+"
	// A list of methods for validating the configuration.
	Validators?: [...#Validators]
}

#Tags: {
	// The key-value string map. The tag key can be up to 128 characters and must not start with aws:.
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value can be up to 256 characters.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Validators: {
	// Either the JSON Schema content or the Amazon Resource Name (ARN) of an Lambda function.
	Content?: string & strings.MinRunes(0) & strings.MaxRunes(32768)
	// AWS AppConfig supports validators of type JSON_SCHEMA and LAMBDA.
	Type?: string
}
