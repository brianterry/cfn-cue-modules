package contactlist

import "strings"

#Properties: {
	// The name of the contact list.
	ContactListName?: string & =~"^[a-zA-Z0-9_-]{1,64}$"
	// The description of the contact list.
	Description?: string & strings.MaxRunes(500)
	// The tags (keys and values) associated with the contact list.
	Tags?: [...#Tag]
	// The topics associated with the contact list.
	Topics?: [...#Topic]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Topic: {
	DefaultSubscriptionStatus: string
	// The description of the topic.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	// The display name of the topic.
	DisplayName: string & strings.MinRunes(0) & strings.MaxRunes(128)
	// The name of the topic.
	TopicName: string & =~"^[a-zA-Z0-9_-]{1,64}$"
}
