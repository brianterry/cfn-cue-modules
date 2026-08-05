package internetgateway

import "strings"

#Properties: {
	// Any tags to assign to the internet gateway.
	Tags?: [...#Tag]
}

#Tag: {
	// The tag key.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag value.
	Value: string & strings.MaxRunes(256)
}
