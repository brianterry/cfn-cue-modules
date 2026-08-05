package appinstancebot

import "strings"

#Properties: {
	// The ARN of the AppInstance.
	AppInstanceArn: string & =~"^arn:[a-z0-9-\\.]{1,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[a-z0-9-\\.]{0,63}:[^/].{0,1023}$" & strings.MinRunes(5) & strings.MaxRunes(1600)
	Configuration: #Configuration
	// The metadata of the AppInstanceBot.
	Metadata?: string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The name of the AppInstanceBot.
	Name?: string & =~"^[\\u0009\\u000A\\u000D\\u0020-\\u007E\\u0085\\u00A0-\\uD7FF\\uE000-\\uFFFD\\u10000-\\u10FFFF]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
	// The tags assigned to the AppInstanceBot.
	Tags?: [...#Tag]
}

#Configuration: {
	Lex: #LexConfiguration
}

#InvokedBy: {
	// Sets standard messages as the bot trigger.
	StandardMessages: "AUTO" | "ALL" | "MENTIONS" | "NONE"
	// Sets targeted messages as the bot trigger.
	TargetedMessages: "ALL" | "NONE"
}

#LexConfiguration: {
	InvokedBy?: #InvokedBy
	// The ARN of the Amazon Lex V2 bot's alias.
	LexBotAliasArn: string & =~"^arn:aws:lex:[a-z]{2}-[a-z]+-\\d{1}:\\d{12}:bot-alias/[A-Z0-9]{10}/[A-Z0-9]{10}$" & strings.MinRunes(15) & strings.MaxRunes(2048)
	// Identifies the Amazon Lex V2 bot's language and locale.
	LocaleId: string
	// Determines whether the Amazon Lex V2 bot responds to all standard messages. Control messages are not supported.
	RespondsTo?: "STANDARD_MESSAGES"
	// The name of the welcome intent configured in the Amazon Lex V2 bot.
	WelcomeIntent?: string & =~"^([A-Za-z]_?)+$" & strings.MinRunes(1) & strings.MaxRunes(100)
}

#Tag: {
	// The key in a tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value in a tag.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
