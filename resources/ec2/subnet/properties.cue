package subnet

#Properties: {
	// Indicates whether a network interface created in this subnet receives an IPv6 address. The default value is ``false``.
 If you specify ``AssignIpv6AddressOnCreation``, you must also specify an IPv6 CIDR block.
	AssignIpv6AddressOnCreation?: bool
	// The Availability Zone of the subnet.
 If you update this property, you must also update the ``CidrBlock`` property.
	AvailabilityZone?: string
	// The AZ ID of the subnet.
	AvailabilityZoneId?: string
	// The IPv4 CIDR block assigned to the subnet.
 If you update this property, we create a new subnet, and then delete the existing one.
	CidrBlock?: string
	// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations.
  You must first configure a NAT gateway in a public subnet (separate from the subnet containing the IPv6-only workloads). For example, the subnet containing the NAT gateway should have a ``0.0.0.0/0`` route pointing to the internet gateway. For more information, see [Configure DNS64 and NAT64](https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-nat64-dns64.html#nat-gateway-nat64-dns64-walkthrough) in the *User Guide*.
	EnableDns64?: bool
	// Indicates the device position for local network interfaces in this subnet. For example, ``1`` indicates local network interfaces in this subnet are the secondary network interface (eth1).
	EnableLniAtDeviceIndex?: int
	// An IPv4 IPAM pool ID for the subnet.
	Ipv4IpamPoolId?: string
	// An IPv4 netmask length for the subnet.
	Ipv4NetmaskLength?: int
	// The IPv6 CIDR block.
 If you specify ``AssignIpv6AddressOnCreation``, you must also specify an IPv6 CIDR block.
	Ipv6CidrBlock?: string
	// An IPv6 IPAM pool ID for the subnet.
	Ipv6IpamPoolId?: string
	// Indicates whether this is an IPv6 only subnet. For more information, see [Subnet basics](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html#subnet-basics) in the *User Guide*.
	Ipv6Native?: bool
	// An IPv6 netmask length for the subnet.
	Ipv6NetmaskLength?: int
	// Indicates whether instances launched in this subnet receive a public IPv4 address. The default value is ``false``.
 AWS charges for all public IPv4 addresses, including public IPv4 addresses associated with running instances and Elastic IP addresses. For more information, see the *Public IPv4 Address* tab on the [VPC pricing page](https://docs.aws.amazon.com/vpc/pricing/).
	MapPublicIpOnLaunch?: bool
	// The Amazon Resource Name (ARN) of the Outpost.
	OutpostArn?: string
	// The hostname type for EC2 instances launched into this subnet and how DNS A and AAAA record queries to the instances should be handled. For more information, see [Amazon EC2 instance hostname types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-naming.html) in the *User Guide*.
 Available options:
  +  EnableResourceNameDnsAAAARecord (true | false)
  +  EnableResourceNameDnsARecord (true | false)
  +  HostnameType (ip-name | resource-name)
	PrivateDnsNameOptionsOnLaunch?: {
		EnableResourceNameDnsAAAARecord?: bool
		EnableResourceNameDnsARecord?: bool
		HostnameType?: string
	}
	// Any tags assigned to the subnet.
	Tags?: [...#Tag]
	// The ID of the VPC the subnet is in.
 If you update this property, you must also update the ``CidrBlock`` property.
	VpcId: string
}

#Tag: {
	// The tag key.
	Key: string
	// The tag value.
	Value: string
}
