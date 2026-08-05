package subnetcidrblock

import "strings"

#Properties: {
	// The IPv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length
	Ipv6CidrBlock?: string & strings.MaxRunes(42)
	// The ID of an IPv6 Amazon VPC IP Address Manager (IPAM) pool from which to allocate, to get the subnet's CIDR
	Ipv6IpamPoolId?: string
	// The netmask length of the IPv6 CIDR to allocate to the subnet from an IPAM pool
	Ipv6NetmaskLength?: int & >=0 & <=128
	// The ID of the subnet
	SubnetId: string
}
