package vpcendpointassociation

import "strings"

#Properties: {
	Description?: #Description
	FirewallArn: #ResourceArn
	SubnetMapping: #SubnetMapping
	Tags?: [...#Tag]
	VpcId: #VpcId
}

#Description: string & =~"^.*$" & strings.MaxRunes(512)

#EndpointId: string

#ResourceArn: string & =~"^(arn:aws.*)$" & strings.MinRunes(1) & strings.MaxRunes(256)

#ResourceId: string & =~"^([0-9a-f]{8})-([0-9a-f]{4}-){3}([0-9a-f]{12})$" & strings.MinRunes(36) & strings.MaxRunes(36)

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

#VpcId: string & =~"^vpc-[0-9a-f]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
