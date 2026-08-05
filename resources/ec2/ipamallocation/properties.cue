package ipamallocation

#Properties: {
	Cidr?: #Cidr
	Description?: string
	// Id of the IPAM Pool.
	IpamPoolId: string
	// The desired netmask length of the allocation. If set, IPAM will choose a block of free space with this size and return the CIDR representing it.
	NetmaskLength?: int
}
