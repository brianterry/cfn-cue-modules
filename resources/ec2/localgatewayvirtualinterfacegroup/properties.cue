package localgatewayvirtualinterfacegroup

import "strings"

#Properties: {
	// The Autonomous System Number(ASN) for the local Border Gateway Protocol (BGP)
	LocalBgpAsn?: int
	// The extended 32-bit ASN for the local BGP configuration
	LocalBgpAsnExtended?: int
	// The ID of the local gateway
	LocalGatewayId: string
	// The tags assigned to the virtual interface group
	Tags?: [...#Tag]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(127)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & =~"^(?!aws:.*)" & strings.MinRunes(1) & strings.MaxRunes(255)
}
