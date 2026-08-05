package pool

import "strings"

#Properties: {
	// When set to true the pool can't be deleted. By default this is set to false.
	DeletionProtectionEnabled?: bool
	// A keyword is a word that you can search for on a particular phone number or pool. It is also a specific word or phrase that an end user can send to your number to elicit a response, such as an informational message or a special offer. When your number receives a message that begins with a keyword, AWS End User Messaging SMS and Voice responds with a customizable message. Keywords "HELP" and "STOP" are mandatory keywords
	MandatoryKeywords: {
		HELP: #MandatoryKeyword
		STOP: #MandatoryKeyword
	}
	// The name of the OptOutList to associate with the pool. You can use the OptOutListName or OptOutListArn.
	OptOutListName?: string & =~"^[A-Za-z0-9_:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// A keyword is a word that you can search for on a particular phone number or pool. It is also a specific word or phrase that an end user can send to your number to elicit a response, such as an informational message or a special offer. When your number receives a message that begins with a keyword, AWS End User Messaging SMS and Voice responds with a customizable message.
	OptionalKeywords?: [...#OptionalKeyword]
	// The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn and it's IsoCountryCode.
	OriginationIdentities: [...string & =~"^arn:\\S+" & strings.MinRunes(20) & strings.MaxRunes(256)]
	// By default this is set to false. When an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, AWS End User Messaging SMS and Voice automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.
	SelfManagedOptOutsEnabled?: bool
	// Indicates whether shared routes are enabled for the pool.
	SharedRoutesEnabled?: bool
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// When you set up two-way SMS, you can receive incoming messages from your customers. When one of your customers sends a message to your phone number, the message body is sent to an Amazon SNS topic or Amazon Connect for processing.
	TwoWay?: {
		ChannelArn?: string & =~"^[ \\S]+"
		ChannelRole?: string & =~"^arn:\\S+$"
		Enabled: bool
	}
}

#MandatoryKeyword: {
	Message: string & =~"^(?!\\s*$)[\\s\\S]+$" & strings.MaxRunes(1600)
}

#OptionalKeyword: {
	Action: "AUTOMATIC_RESPONSE" | "OPT_OUT" | "OPT_IN"
	Keyword: string & =~"^(?!(?i)(stop|help)$)[ \\S]+" & strings.MaxRunes(30)
	Message: string & =~"^(?!\\s*$)[\\s\\S]+$" & strings.MaxRunes(1600)
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
