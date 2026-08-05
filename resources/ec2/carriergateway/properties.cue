package carriergateway

import "strings"

#Properties: {
	// The tags for the carrier gateway.
	Tags?: #Tags
	// The ID of the VPC.
	VpcId: string
}

#Tag: {
	Key?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tags: [...#Tag]
