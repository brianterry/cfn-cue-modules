package egressonlyinternetgateway

import "strings"

#Properties: {
	// Any tags assigned to the egress only internet gateway.
	Tags?: [...#Tag]
	// The ID of the VPC for which to create the egress-only internet gateway.
	VpcId: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MaxRunes(256)
}
