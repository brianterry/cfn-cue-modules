package eventintegration

import "strings"

#Properties: {
	// The event integration description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1000)
	// The Amazon Eventbridge bus for the event integration.
	EventBridgeBus: string & =~"^[a-zA-Z0-9/\\._\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The EventFilter (source) associated with the event integration.
	EventFilter: #EventFilter
	// The name of the event integration.
	Name: string & =~"^[a-zA-Z0-9/\\._\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The tags (keys and values) associated with the event integration.
	Tags?: [...#Tag]
}

#EventFilter: {
	// The source of the events.
	Source: string & =~"^aws\\.(partner\\/.*|cases)$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Metadata: {
	// A key to identify the metadata.
	Key: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(255)
	// Corresponding metadata value for the key.
	Value: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tag: {
	// A key to identify the tag.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// Corresponding tag value for the key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
