package localgatewayroutetablevpcassociation

import "strings"

#Properties: {
	// The ID of the local gateway route table.
	LocalGatewayRouteTableId: string
	// The tags for the association.
	Tags?: #Tags
	// The ID of the VPC.
	VpcId: string
}

#Tag: {
	Key?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tags: [...#Tag]
