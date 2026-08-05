package natgateway

#Properties: {
	// [Public NAT gateway only] The allocation ID of the Elastic IP address that's associated with the NAT gateway. This property is required for a public NAT gateway and cannot be specified with a private NAT gateway.
	AllocationId?: string
	// Indicates whether this is a zonal (single-AZ) or regional (multi-AZ) NAT gateway.
 A zonal NAT gateway is a NAT Gateway that provides redundancy and scalability within a single availability zone. A regional NAT gateway is a single NAT Gateway that works across multiple availability zones (AZs) in your VPC, providing redundancy, scalability and availability across all the AZs in a Region.
 For more information, see [Regional NAT gateways for automatic multi-AZ expansion](https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateways-regional.html) in the *Amazon VPC User Guide*.
	AvailabilityMode?: string
	// For regional NAT gateways only: Specifies which Availability Zones you want the NAT gateway to support and the Elastic IP addresses (EIPs) to use in each AZ. The regional NAT gateway uses these EIPs to handle outbound NAT traffic from their respective AZs. If not specified, the NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface. If you specify this parameter, auto-expansion is disabled and you must manually manage AZ coverage.
 A regional NAT gateway is a single NAT Gateway that works across multiple availability zones (AZs) in your VPC, providing redundancy, scalability and availability across all the AZs in a Region.
 For more information, see [Regional NAT gateways for automatic multi-AZ expansion](https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateways-regional.html) in the *Amazon VPC User Guide*.
	AvailabilityZoneAddresses?: [...#AvailabilityZoneAddress]
	// Indicates whether the NAT gateway supports public or private connectivity. The default is public connectivity.
	ConnectivityType?: string
	// The maximum amount of time to wait (in seconds) before forcibly releasing the IP addresses if connections are still in progress. Default value is 350 seconds.
	MaxDrainDurationSeconds?: int
	// The private IPv4 address to assign to the NAT gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
	PrivateIpAddress?: string
	// Secondary EIP allocation IDs. For more information, see [Create a NAT gateway](https://docs.aws.amazon.com/vpc/latest/userguide/nat-gateway-working-with.html) in the *Amazon VPC User Guide*.
	SecondaryAllocationIds?: [...string]
	// [Private NAT gateway only] The number of secondary private IPv4 addresses you want to assign to the NAT gateway. For more information about secondary addresses, see [Create a NAT gateway](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-creating) in the *Amazon Virtual Private Cloud User Guide*.
 ``SecondaryPrivateIpAddressCount`` and ``SecondaryPrivateIpAddresses`` cannot be set at the same time.
	SecondaryPrivateIpAddressCount?: int & >=1
	// Secondary private IPv4 addresses. For more information about secondary addresses, see [Create a NAT gateway](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-creating) in the *Amazon Virtual Private Cloud User Guide*.
 ``SecondaryPrivateIpAddressCount`` and ``SecondaryPrivateIpAddresses`` cannot be set at the same time.
	SecondaryPrivateIpAddresses?: [...string]
	// The ID of the subnet in which the NAT gateway is located.
	SubnetId?: string
	// The tags for the NAT gateway.
	Tags?: [...#Tag]
	// The ID of the VPC in which the NAT gateway is located.
	VpcId?: string
}

#AvailabilityZoneAddress: {
	// The allocation IDs of the Elastic IP addresses (EIPs) to be used for handling outbound NAT traffic in this specific Availability Zone.
	AllocationIds: [...string]
	// For regional NAT gateways only: The Availability Zone where this specific NAT gateway configuration will be active. Each AZ in a regional NAT gateway has its own configuration to handle outbound NAT traffic from that AZ. 
 A regional NAT gateway is a single NAT Gateway that works across multiple availability zones (AZs) in your VPC, providing redundancy, scalability and availability across all the AZs in a Region.
	AvailabilityZone?: string
	// For regional NAT gateways only: The ID of the Availability Zone where this specific NAT gateway configuration will be active. Each AZ in a regional NAT gateway has its own configuration to handle outbound NAT traffic from that AZ. Use this instead of AvailabilityZone for consistent identification of AZs across AWS Regions. 
 A regional NAT gateway is a single NAT Gateway that works across multiple availability zones (AZs) in your VPC, providing redundancy, scalability and availability across all the AZs in a Region.
	AvailabilityZoneId?: string
}

#Tag: {
	// The tag key.
	Key: string
	// The tag value.
	Value: string
}
