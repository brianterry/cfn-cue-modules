package emailaddress

import "strings"

#Properties: {
	// List of alias configurations for the email address
	AliasConfigurations?: [...#AliasConfiguration]
	// A description for the email address.
	Description?: string & =~"(^[\\S].*[\\S]$)|(^[\\S]$)" & strings.MinRunes(1) & strings.MaxRunes(250)
	// The display name for the email address.
	DisplayName?: string & =~"(^[\\S].*[\\S]$)|(^[\\S]$)" & strings.MinRunes(0) & strings.MaxRunes(256)
	// Email address to be created for this instance
	EmailAddress: string & =~"([^\\s@]+@[^\\s@]+\\.[^\\s@]+)" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:(aws|aws-us-gov):connect:[a-z]{2}-[a-z]+-[0-9]{1}:[0-9]{1,20}:instance/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(250)
	// One or more tags.
	Tags?: [...#Tag]
}

#AliasConfiguration: {
	// The identifier of the email address alias
	EmailAddressArn: string & =~"^arn:(aws|aws-us-gov):connect:[a-z]{2}-[a-z]+-[0-9]{1}:[0-9]{1,20}:instance/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}/email-address/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
