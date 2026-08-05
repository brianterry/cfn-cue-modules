package localgatewayvirtualinterface

import "strings"

#Properties: {
	// The local address.
	LocalAddress: string
	// The ID of the virtual interface group
	LocalGatewayVirtualInterfaceGroupId: string
	// The Outpost LAG ID.
	OutpostLagId: string
	// The peer address.
	PeerAddress: string
	// The peer BGP ASN.
	PeerBgpAsn?: int
	// The extended 32-bit ASN of the BGP peer for use with larger ASN values.
	PeerBgpAsnExtended?: int
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// The ID of the VLAN.
	Vlan: int
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tags: [...#Tag]
