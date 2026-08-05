package connectpeer

#Properties: {
	// Bgp options for connect peer.
	BgpOptions?: #BgpOptions
	// The ID of the attachment to connect.
	ConnectAttachmentId: string
	// The IP address of a core network.
	CoreNetworkAddress?: string
	// The inside IP addresses used for a Connect peer configuration.
	InsideCidrBlocks?: [...string]
	// The IP address of the Connect peer.
	PeerAddress: string
	// The subnet ARN for the connect peer.
	SubnetArn?: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#BgpOptions: {
	PeerAsn?: number
}

#ConnectPeerBgpConfiguration: {
	// The address of a core network.
	CoreNetworkAddress?: string
	// The ASN of the Coret Network.
	CoreNetworkAsn?: number
	// The address of a core network Connect peer.
	PeerAddress?: string
	// The ASN of the Connect peer.
	PeerAsn?: number
}

#ConnectPeerConfiguration: {
	BgpConfigurations?: [...#ConnectPeerBgpConfiguration]
	// The IP address of a core network.
	CoreNetworkAddress?: string
	// The inside IP addresses used for a Connect peer configuration.
	InsideCidrBlocks?: [...string]
	// The IP address of the Connect peer.
	PeerAddress?: string
	Protocol?: #TunnelProtocol
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}

#TunnelProtocol: string
