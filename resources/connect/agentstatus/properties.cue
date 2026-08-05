package agentstatus

import "strings"

#Properties: {
	// The description of the status.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(250)
	// The display order of the status.
	DisplayOrder?: int & >=1 & <=50
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The name of the status.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// A number indicating the reset order of the agent status.
	ResetOrderNumber?: bool
	// The state of the status.
	State: "ENABLED" | "DISABLED"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The type of agent status.
	Type?: "ROUTABLE" | "CUSTOM" | "OFFLINE"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
