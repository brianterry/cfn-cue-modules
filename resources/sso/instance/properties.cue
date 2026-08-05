package instance

import "strings"

#Properties: {
	// The name you want to assign to this Identity Center (SSO) Instance
	Name?: string & =~"^[\\w+=,.@-]+$" & strings.MinRunes(1) & strings.MaxRunes(32)
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & =~"[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"[\\w+=,.@-]+" & strings.MinRunes(0) & strings.MaxRunes(256)
}
