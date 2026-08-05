package contactflow

import "strings"

#Properties: {
	// The content of the contact flow in JSON format.
	Content: string & strings.MinRunes(1) & strings.MaxRunes(256000)
	// The description of the contact flow.
	Description?: string & strings.MaxRunes(500)
	// The identifier of the Amazon Connect instance (ARN).
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the contact flow.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// The state of the contact flow.
	State?: "ACTIVE" | "ARCHIVED"
	// One or more tags.
	Tags?: [...#Tag]
	// The type of the contact flow.
	Type: "CONTACT_FLOW" | "CUSTOMER_QUEUE" | "CUSTOMER_HOLD" | "CUSTOMER_WHISPER" | "AGENT_HOLD" | "AGENT_WHISPER" | "OUTBOUND_WHISPER" | "AGENT_TRANSFER" | "QUEUE_TRANSFER" | "CAMPAIGN"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -. 
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. . You can specify a value that is maximum of 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}
