package contactchannel

import "strings"

#Properties: {
	// The details that SSM Incident Manager uses when trying to engage the contact channel.
	ChannelAddress?: string
	// The device name. String of 6 to 50 alphabetical, numeric, dash, and underscore characters.
	ChannelName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Device type, which specify notification channel. Currently supported values: “SMS”, “VOICE”, “EMAIL”, “CHATBOT.
	ChannelType?: "SMS" | "VOICE" | "EMAIL"
	// ARN of the contact resource
	ContactId?: string & =~"arn:[-\\w+=\\/,.@]+:[-\\w+=\\/,.@]+:[-\\w+=\\/,.@]*:[0-9]+:([\\w+=\\/,.@:-]+)*" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// If you want to activate the channel at a later time, you can choose to defer activation. SSM Incident Manager can't engage your contact channel until it has been activated.
	DeferActivation?: bool
}
