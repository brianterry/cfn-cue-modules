package routeserver

import "strings"

#Properties: {
	// The Amazon-side ASN of the Route Server.
	AmazonSideAsn: int & >=1 & <=4294967294
	// Whether to enable persistent routes
	PersistRoutes?: "enable" | "disable"
	// The duration of persistent routes in minutes
	PersistRoutesDuration?: int & >=0 & <=5
	// Whether to enable SNS notifications
	SnsNotificationsEnabled?: bool
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
