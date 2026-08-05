package domainverification

import "strings"

#Properties: {
	DomainName: string & strings.MinRunes(3) & strings.MaxRunes(255)
	Tags?: [...#Tag]
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TxtMethodConfig: {
	name?: string
	value?: string
}
