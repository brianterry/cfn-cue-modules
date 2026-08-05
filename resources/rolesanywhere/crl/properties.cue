package crl

import "strings"

#Properties: {
	CrlData: string
	Enabled?: bool
	Name: string
	Tags?: [...#Tag]
	TrustAnchorArn?: string & =~"^arn:aws(-[^:]+)?:rolesanywhere(:.*){2}(:trust-anchor.*)$"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
