package vpccidrblock

#Properties: {
	// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.
	AmazonProvidedIpv6CidrBlock?: bool
	// An IPv4 CIDR block to associate with the VPC.
	CidrBlock?: string
	// The ID of the IPv4 IPAM pool to Associate a CIDR from to a VPC.
	Ipv4IpamPoolId?: string
	// The netmask length of the IPv4 CIDR you would like to associate from an Amazon VPC IP Address Manager (IPAM) pool.
	Ipv4NetmaskLength?: int
	// An IPv6 CIDR block from the IPv6 address pool.
	Ipv6CidrBlock?: string
	// The name of the location from which we advertise the IPV6 CIDR block.
	Ipv6CidrBlockNetworkBorderGroup?: string
	// The ID of the IPv6 IPAM pool to Associate a CIDR from to a VPC.
	Ipv6IpamPoolId?: string
	// The netmask length of the IPv6 CIDR you would like to associate from an Amazon VPC IP Address Manager (IPAM) pool.
	Ipv6NetmaskLength?: int
	// The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
	Ipv6Pool?: string
	// The ID of the VPC.
	VpcId: string
}
