package environment

import "strings"

#Properties: {
	// The application ID.
	ApplicationId: string & =~"[a-z0-9]{4,7}"
	// On resource deletion this controls whether the Deletion Protection check should be applied, bypassed, or (the default) whether the behavior should be controlled by the account-level Deletion Protection setting. See https://docs.aws.amazon.com/appconfig/latest/userguide/deletion-protection.html
	DeletionProtectionCheck?: "ACCOUNT_DEFAULT" | "APPLY" | "BYPASS"
	// A description of the environment.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// Amazon CloudWatch alarms to monitor during the deployment process.
	Monitors?: [...#Monitor]
	// A name for the environment.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Metadata to assign to the environment. Tags help organize and categorize your AWS AppConfig resources. Each tag consists of a key and an optional value, both of which you define.
	Tags?: [...#Tag]
}

#Monitor: {
	// Amazon Resource Name (ARN) of the Amazon CloudWatch alarm.
	AlarmArn: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// ARN of an AWS Identity and Access Management (IAM) role for AWS AppConfig to monitor AlarmArn.
	AlarmRoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#Tag: {
	// The key-value string map. The valid character set is [a-zA-Z1-9+-=._:/]. The tag key can be up to 128 characters and must not start with aws:.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value can be up to 256 characters.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
