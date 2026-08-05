package ipampoolcidr

#Properties: {
	// Represents a single IPv4 or IPv6 CIDR
	Cidr?: string
	// Id of the IPAM Pool.
	IpamPoolId: string
	// The desired netmask length of the provision. If set, IPAM will choose a block of free space with this size and return the CIDR representing it.
	NetmaskLength?: int
}
