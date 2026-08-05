package accesstoken

import "strings"

#Properties: {
	ClientToken?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	DnsViewId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	ExpiresAt?: string
	Name?: #ResourceName
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
