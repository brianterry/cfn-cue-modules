package monitor

import "strings"

#Properties: {
	DisplayName: string & strings.MinRunes(1) & strings.MaxRunes(100)
	IdentityCenterInstanceArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"
	// The AWS region where IAM Identity Center is enabled. Required when Identity Center is in a different region than the monitor.
	IdentityCenterRegion?: string & =~"^[a-z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(25)
	RoleArn: string & =~"^arn:(aws[a-zA-Z-]*):iam::\\d{12}:role(/[!-.0-~]+)*/[\\w+=,.@-]+$"
	Subdomain: string & =~"^[a-z0-9-]{1,100}$"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 127 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 1 to 255 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}
