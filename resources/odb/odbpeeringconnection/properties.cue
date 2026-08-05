package odbpeeringconnection

import "strings"

#Properties: {
	// The additional CIDR blocks for the ODB peering connection.
	AdditionalPeerNetworkCidrs?: [...string]
	// The name of the ODB peering connection.
	DisplayName?: string & =~"^[a-zA-Z_](?!.*--)[a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The unique identifier of the ODB network.
	OdbNetworkId?: string & =~"^(arn:(?:aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):[a-z0-9-]+:[a-z0-9-]*:[0-9]+:[a-z0-9-]+/[a-zA-Z0-9_~.-]{6,64}|[a-zA-Z0-9_~.-]{6,64})$" & strings.MinRunes(6) & strings.MaxRunes(2048)
	// The unique identifier of the peer network.
	PeerNetworkId?: string & =~"^(arn:(?:aws|aws-cn|aws-us-gov|aws-iso-{0,1}[a-z]{0,1}):[a-z0-9-]+:[a-z0-9-]*:[0-9]+:[a-z0-9-]+/[a-zA-Z0-9_~.-]{6,64}|[a-zA-Z0-9_~.-]{6,64})$" & strings.MinRunes(6) & strings.MaxRunes(2048)
	// The unique identifier of the VPC route table for which a route to the ODB network is automatically created during peering connection establishment.
	PeerNetworkRouteTableIds?: [...string]
	// Tags to assign to the Odb peering connection.
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that's 1 to 128 Unicode characters in length and can't be prefixed with aws:. You can use any of the following characters: Unicode letters, digits, whitespace, _, ., :, /, =, +, @, -, and ".
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that's 1 to 256 characters in length. You can use any of the following characters: Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
