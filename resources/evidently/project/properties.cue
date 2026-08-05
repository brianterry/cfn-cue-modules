package project

import "strings"

#Properties: {
	AppConfigResource?: #AppConfigResourceObject
	DataDelivery?: #DataDeliveryObject
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(160)
	Name: string & =~"[-a-zA-Z0-9._]*" & strings.MinRunes(1) & strings.MaxRunes(127)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AppConfigResourceObject: {
	ApplicationId: string & =~"[a-z0-9]{4,7}"
	EnvironmentId: string & =~"[a-z0-9]{4,7}"
}

#DataDeliveryObject: {
	LogGroup?: string & =~"^[-a-zA-Z0-9._/]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	S3?: #S3Destination
}

#S3Destination: {
	BucketName: string & =~"^[a-z0-9][-a-z0-9]*[a-z0-9]$" & strings.MinRunes(3) & strings.MaxRunes(63)
	Prefix?: string & =~"^[-a-zA-Z0-9!_.*'()/]*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
