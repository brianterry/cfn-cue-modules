package localgatewayroutetablevirtualinterfacegroupassociation

import "strings"

#Properties: {
	// The ID of the local gateway route table.
	LocalGatewayRouteTableId: string
	// The ID of the local gateway route table virtual interface group.
	LocalGatewayVirtualInterfaceGroupId: string
	// The tags for the local gateway route table virtual interface group association.
	Tags?: #Tags
}

#Tag: {
	Key?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(127)
	Value?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tags: [...#Tag]
