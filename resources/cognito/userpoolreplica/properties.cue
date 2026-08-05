package userpoolreplica

import "strings"

#Properties: {
	RegionName: string & strings.MinRunes(5) & strings.MaxRunes(32)
	UserPoolId: string
	UserPoolTagsAtCreate?: {...}
}
