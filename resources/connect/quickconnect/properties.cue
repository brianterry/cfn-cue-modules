package quickconnect

import "strings"

#Properties: {
	// The description of the quick connect.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(250)
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The name of the quick connect.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(127)
	// Configuration settings for the quick connect.
	QuickConnectConfig: #QuickConnectConfig
	// One or more tags.
	Tags?: [...#Tag]
}

#FlowQuickConnectConfig: {
	ContactFlowArn: #ContactFlowArn
}

#PhoneNumberQuickConnectConfig: {
	PhoneNumber: #PhoneNumber
}

#QueueQuickConnectConfig: {
	ContactFlowArn: #ContactFlowArn
	QueueArn: #QueueArn
}

#QuickConnectConfig: {
	FlowConfig?: #FlowQuickConnectConfig
	PhoneConfig?: #PhoneNumberQuickConnectConfig
	QueueConfig?: #QueueQuickConnectConfig
	QuickConnectType: #QuickConnectType
	UserConfig?: #UserQuickConnectConfig
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is maximum of 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}

#UserQuickConnectConfig: {
	ContactFlowArn: #ContactFlowArn
	UserArn: #UserArn
}
