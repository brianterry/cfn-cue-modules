package testcase

import "strings"

#Properties: {
	// The content of the test case.
	Content: string & strings.MinRunes(1) & strings.MaxRunes(256000)
	// The description of the test case.
	Description?: string & =~".*\\S.*" & strings.MaxRunes(500)
	// Entry point for Testcase.
	EntryPoint?: #EntryPoint
	// The initialization data of the test case.
	InitializationData?: string & strings.MinRunes(1) & strings.MaxRunes(256000)
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the test case.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(127)
	// The status of the test case.
	Status?: "SAVED" | "PUBLISHED"
	// One or more tags.
	Tags?: [...#Tag]
}

#EntryPoint: {
	// The chat entry point parameters for the test case
	ChatEntryPointParameters?: {
		FlowId?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	}
	// The type of the Entry Point
	Type?: "VOICE_CALL" | "CHAT"
	// The voice call entry point parameters for the test case
	VoiceCallEntryPointParameters?: {
		DestinationPhoneNumber?: string
		FlowId?: string
		SourcePhoneNumber?: string
	}
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is maximum of 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
