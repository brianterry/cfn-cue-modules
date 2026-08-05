package vpcendpointassociation

import "strings"

#Properties: {
	Description?: #Description
	FirewallArn: #ResourceArn
	SubnetMapping: #SubnetMapping
	Tags?: [...#Tag]
	VpcId: #VpcId
}

#SubnetMapping: {
	// A IPAddressType
	IPAddressType?: string
	// A SubnetId.
	SubnetId: string
}

#Tag: {
	Key: string & =~"^.*$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^.*$" & strings.MinRunes(0) & strings.MaxRunes(255)
}
