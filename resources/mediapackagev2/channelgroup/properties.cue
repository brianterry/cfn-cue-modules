package channelgroup

import "strings"

#Properties: {
	ChannelGroupName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// <p>Enter any descriptive text that helps you to identify the channel group.</p>
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	Tags?: [...#Tag]
}

#Tag: {
	Key?: string
	Value?: string
}
