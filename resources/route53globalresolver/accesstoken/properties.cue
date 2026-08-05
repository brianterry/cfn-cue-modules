package accesstoken

import "strings"

#Properties: {
	ClientToken?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	DnsViewId: string & strings.MinRunes(1) & strings.MaxRunes(64)
	ExpiresAt?: string
	Name?: #ResourceName
	Tags?: [...#Tag]
}

#AccessToken: string & strings.MinRunes(0) & strings.MaxRunes(100)

#ResourceName: string & =~"(?!^[0-9]+$)([a-zA-Z0-9-_' ']+)" & strings.MinRunes(1) & strings.MaxRunes(64)

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TokenStatus: "CREATING" | "OPERATIONAL" | "DELETING"
