package trafficdistributiongroup

import "strings"

#Properties: {
	// A description for the traffic distribution group.
	Description?: string & =~"(^[\\S].*[\\S]$)|(^[\\S]$)" & strings.MinRunes(1) & strings.MaxRunes(250)
	// The identifier of the Amazon Connect instance that has been replicated.
	InstanceArn: string & =~"^arn:(aws|aws-us-gov):connect:[a-z]{2}-[a-z]+-[0-9]{1}:[0-9]{1,20}:instance/[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(250)
	// The name for the traffic distribution group.
	Name: string & =~"(^[\\S].*[\\S]$)|(^[\\S]$)" & strings.MinRunes(1) & strings.MaxRunes(128)
	// One or more tags.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 1 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
