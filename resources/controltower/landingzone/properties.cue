package landingzone

import "strings"

#Properties: {
	Manifest: string
	RemediationTypes?: #RemediationTypes
	Tags?: [...#Tag]
	Version: string & =~"\\d+.\\d+" & strings.MinRunes(3) & strings.MaxRunes(10)
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
