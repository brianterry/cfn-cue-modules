package contactflowmodule

import "strings"

#Properties: {
	// The content of the contact flow module in JSON format.
	Content: string & strings.MinRunes(1) & strings.MaxRunes(256000)
	// The description of the contact flow module.
	Description?: string & =~".*\\S.*" & strings.MaxRunes(500)
	// Defines the external invocation configuration of the flow module resource
	ExternalInvocationConfiguration?: {
		Enabled?: #Enabled
	}
	// The identifier of the Amazon Connect instance (ARN).
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the contact flow module.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(127)
	// The schema of the settings for contact flow module in JSON Schema V4 format.
	Settings?: string & strings.MaxRunes(256000)
	// The state of the contact flow module.
	State?: string & strings.MaxRunes(500)
	// One or more tags.
	Tags?: [...#Tag]
}

#Enabled: bool

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is maximum of 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
