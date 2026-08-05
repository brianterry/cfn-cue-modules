package channelpolicy

import "strings"

#Properties: {
	ChannelGroupName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	ChannelName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Policy: {...}
}
