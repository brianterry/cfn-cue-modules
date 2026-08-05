package localgatewayroutetable

import "strings"

#Properties: {
	// The ID of the local gateway.
	LocalGatewayId: string
	// The mode of the local gateway route table.
	Mode?: string
	// The tags for the local gateway route table.
	Tags?: #Tags
}

#Tag: {
	Key?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tags: [...#Tag]
