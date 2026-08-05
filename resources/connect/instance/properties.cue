package instance

import "strings"

#Properties: {
	// The attributes for the instance.
	Attributes: #Attributes
	// Existing directoryId user wants to map to the new Connect instance.
	DirectoryId?: string & =~"^d-[0-9a-f]{10}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// Specifies the type of directory integration for new instance.
	IdentityManagementType: "SAML" | "CONNECT_MANAGED" | "EXISTING_DIRECTORY"
	// Alias of the new directory created as part of new instance creation.
	InstanceAlias?: string & =~"^(?!d-)([\\da-zA-Z]+)([-]*[\\da-zA-Z])*$" & strings.MinRunes(1) & strings.MaxRunes(45)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#Attributes: {
	AutoResolveBestVoices?: #AutoResolveBestVoices
	ContactLens?: #ContactLens
	ContactflowLogs?: #ContactflowLogs
	EarlyMedia?: #EarlyMedia
	EnhancedChatMonitoring?: #EnhancedChatMonitoring
	EnhancedContactMonitoring?: #EnhancedContactMonitoring
	HighVolumeOutBound?: #HighVolumeOutBound
	InboundCalls: #InboundCalls
	MessageStreaming?: #MessageStreaming
	MultiPartyChatConference?: #MultiPartyChatConference
	MultiPartyConference?: #MultiPartyConference
	OutboundCalls: #OutboundCalls
	UseCustomTTSVoices?: #UseCustomTTSVoices
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
