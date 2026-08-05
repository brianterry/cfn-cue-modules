package application

import "strings"

#Properties: {
	// A description of the application.
	Description?: string
	// A name for the application.
	Name: string
	// Metadata to assign to the application. Tags help organize and categorize your AWS AppConfig resources. Each tag consists of a key and an optional value, both of which you define.
	Tags?: [...#Tags]
}

#Tags: {
	// The key-value string map. The valid character set is [a-zA-Z1-9 +-=._:/-]. The tag key can be up to 128 characters and must not start with aws:.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value can be up to 256 characters.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
