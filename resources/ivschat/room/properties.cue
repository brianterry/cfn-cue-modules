package room

import "strings"

#Properties: {
	// Array of logging configuration identifiers attached to the room.
	LoggingConfigurationIdentifiers?: [...string & =~"^arn:aws:ivschat:[a-z0-9-]+:[0-9]+:logging-configuration/[a-zA-Z0-9-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)]
	// The maximum number of characters in a single message.
	MaximumMessageLength?: int & >=1 & <=500
	// The maximum number of messages per second that can be sent to the room.
	MaximumMessageRatePerSecond?: int & >=1 & <=10
	MessageReviewHandler?: #MessageReviewHandler
	// The name of the room. The value does not need to be unique.
	Name?: string & =~"^[a-zA-Z0-9-_]*$" & strings.MinRunes(0) & strings.MaxRunes(128)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#MessageReviewHandler: {
	// Specifies the fallback behavior if the handler does not return a valid response, encounters an error, or times out.
	FallbackResult?: "ALLOW" | "DENY"
	// Identifier of the message review handler.
	Uri?: string & =~"^$|^arn:aws:lambda:[a-z0-9-]+:[0-9]{12}:function:.+" & strings.MinRunes(0) & strings.MaxRunes(170)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
