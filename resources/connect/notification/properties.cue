package notification

import "strings"

#Properties: {
	// The content of the notification.
	Content: #NotificationContent
	// The time a notification will expire
	ExpiresAt?: string & =~"^[0-9]+$"
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The priority of the notification.
	Priority?: #Priority
	// The recipients of the notification.
	Recipients?: #RecipientList
	// One or more tags.
	Tags?: [...#Tag]
}

#NotificationContent: {
	DeDE?: #LocalizedString
	EnUS?: #LocalizedString
	EsES?: #LocalizedString
	FrFR?: #LocalizedString
	IdID?: #LocalizedString
	ItIT?: #LocalizedString
	JaJP?: #LocalizedString
	KoKR?: #LocalizedString
	PtBR?: #LocalizedString
	ZhCN?: #LocalizedString
	ZhTW?: #LocalizedString
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
