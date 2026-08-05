package user

import "strings"

#Properties: {
	// After Contact Work configurations of a user.
	AfterContactWorkConfigs?: [...#AfterContactWorkConfigPerChannel]
	// Auto-accept configurations of a user.
	AutoAcceptConfigs?: [...#AutoAcceptConfig]
	// The identifier of the user account in the directory used for identity management.
	DirectoryUserId?: string
	// The identifier of the hierarchy group for the user.
	HierarchyGroupArn?: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/agent-group/[-a-zA-Z0-9]*$"
	// The information about the identity of the user.
	IdentityInfo?: #UserIdentityInfo
	// The identifier of the Amazon Connect instance.
	InstanceArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*$"
	// The password for the user account. A password is required if you are using Amazon Connect for identity management. Otherwise, it is an error to include a password.
	Password?: string & =~"^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d\\S]{8,64}$"
	// Persistent Connection configurations of a user.
	PersistentConnectionConfigs?: [...#PersistentConnectionConfig]
	// The phone settings for the user.
	PhoneConfig?: #UserPhoneConfig
	// Phone Number configurations of a user.
	PhoneNumberConfigs?: [...#PhoneNumberConfig]
	// The identifier of the routing profile for the user.
	RoutingProfileArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/routing-profile/[-a-zA-Z0-9]*$"
	// One or more security profile arns for the user
	SecurityProfileArns: [...#SecurityProfileArn]
	// One or more tags.
	Tags?: [...#Tag]
	// One or more predefined attributes assigned to a user, with a level that indicates how skilled they are.
	UserProficiencies?: [...#UserProficiency]
	// The user name for the account.
	Username: string & =~"[a-zA-Z0-9\\_\\-\\.\\@]+" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Voice Enhancement configurations of a user.
	VoiceEnhancementConfigs?: [...#VoiceEnhancementConfig]
}

#AfterContactWorkConfig: {
	AfterContactWorkMode?: #AfterContactWorkMode
	AfterContactWorkTimeLimit?: #AfterContactWorkTimeLimit
}

#AfterContactWorkConfigPerChannel: {
	AfterContactWorkConfig: #AfterContactWorkConfig
	AgentFirstCallbackAfterContactWorkConfig?: #AfterContactWorkConfig
	Channel: #Channel
}

#AfterContactWorkMode: "ON" | "OFF" | "ON_DEMAND"

#AfterContactWorkTimeLimit: int & >=0

#AgentFirstCallbackAutoAccept: bool

#AttributeName: string & strings.MinRunes(1) & strings.MaxRunes(64)

#AttributeValue: string & strings.MinRunes(1) & strings.MaxRunes(64)

#AutoAccept: bool

#AutoAcceptConfig: {
	AgentFirstCallbackAutoAccept?: #AgentFirstCallbackAutoAccept
	AutoAccept: #AutoAccept
	Channel: #Channel
}

#Channel: "VOICE" | "CHAT" | "TASK" | "EMAIL"

#DeskPhoneNumber: string

#Email: string

#FirstName: string

#LastName: string

#Level: number & >=0 & <=10

#Mobile: string & =~"^\\+[1-9]\\d{1,14}$"

#PersistentConnection: bool

#PersistentConnectionConfig: {
	Channel: #Channel
	PersistentConnection: #PersistentConnection
}

#PhoneNumberConfig: {
	Channel: #Channel
	PhoneNumber?: #DeskPhoneNumber
	PhoneType: #PhoneType
}

#PhoneType: "SOFT_PHONE" | "DESK_PHONE"

#SecondaryEmail: string & =~"(?=^.{0,265}$)[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,63}"

#SecurityProfileArn: string & =~"^arn:aws[-a-z0-9]*:connect:[-a-z0-9]*:[0-9]{12}:instance/[-a-zA-Z0-9]*/security-profile/[-a-zA-Z0-9]*$"

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is maximum of 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MaxRunes(256)
}

#UserIdentityInfo: {
	Email?: #Email
	FirstName?: #FirstName
	LastName?: #LastName
	Mobile?: #Mobile
	SecondaryEmail?: #SecondaryEmail
}

#UserPhoneConfig: {
	AfterContactWorkTimeLimit?: #AfterContactWorkTimeLimit
	AutoAccept?: #AutoAccept
	DeskPhoneNumber?: #DeskPhoneNumber
	PersistentConnection?: #PersistentConnection
	PhoneType?: #PhoneType
}

#UserProficiency: {
	AttributeName: #AttributeName
	AttributeValue: #AttributeValue
	Level: #Level
}

#VoiceEnhancementConfig: {
	Channel: #Channel
	VoiceEnhancementMode: #VoiceEnhancementMode
}

#VoiceEnhancementMode: "NONE" | "VOICE_ISOLATION" | "NOISE_SUPPRESSION"
