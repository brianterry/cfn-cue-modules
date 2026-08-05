package channel

import "strings"

#Properties: {
	// One or more resources to which events arriving through a channel are logged and stored.
	Destinations?: [...#Destination]
	Name?: #ChannelName
	// The ARN of an on-premises storage solution or application, or a partner event source.
	Source?: string & =~"(.*)" & strings.MinRunes(1) & strings.MaxRunes(256)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Destination: {
	// The ARN of a resource that receives events from a channel.
	Location: string & =~"(^[a-zA-Z0-9._/\\-:]+$)" & strings.MinRunes(3) & strings.MaxRunes(1024)
	// The type of destination for events arriving from a channel.
	Type: "EVENT_DATA_STORE"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
