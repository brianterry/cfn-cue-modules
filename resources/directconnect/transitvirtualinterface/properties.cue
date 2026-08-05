package transitvirtualinterface

import "strings"

#Properties: {
	// The Amazon Resource Name (ARN) of the role to allocate the TransitVifAllocation. Needs directconnect:AllocateTransitVirtualInterface permissions and tag permissions if applicable.
	AllocateTransitVirtualInterfaceRoleArn?: string & =~"^arn:aws[a-z-]*:iam::[0-9]{12}:role/.+$"
	// The ID or ARN of the connection or LAG.
	ConnectionId: string | string | string | string
	// The ID or ARN of the Direct Connect gateway.
	DirectConnectGatewayId: string | string
	// Indicates whether to enable or disable SiteLink.
	EnableSiteLink?: bool
	// The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.
	Mtu?: int
	// The tags associated with the private virtual interface.
	Tags?: [...#Tag]
	// The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).
	VirtualInterfaceName: string & =~"^[\\w \\-_,\\/]{1,100}$"
	// The ID of the VLAN.
	Vlan: int & >=0 & <=4095
}

#BgpPeer: {
	// The address family for the BGP peer.
	AddressFamily: string & =~"^(ipv4)|(ipv6)$"
	// The IP address assigned to the Amazon interface.
	AmazonAddress?: string & =~"^[0-9a-fA-F:.]+/[0-9]+$"
	// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
	Asn: string & =~"^[1-9][0-9]*$"
	// The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximum length of 80 characters.
	AuthKey?: string & =~"^[A-Za-z0-9\\\\!\"#$%&'()*+,\\-./:;<=>?@\\[\\]\\^_`{|}~]{6,80}$"
	BgpPeerId?: string & =~"^dxpeer-[a-z0-9]{8}$"
	// The IP address assigned to the customer interface.
	CustomerAddress?: string & =~"^[0-9a-fA-F:.]+/[0-9]+$"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
