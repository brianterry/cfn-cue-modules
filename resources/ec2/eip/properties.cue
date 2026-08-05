package eip

#Properties: {
	// An Elastic IP address or a carrier IP address in a Wavelength Zone.
	Address?: string
	// The network (``vpc``).
	// If you define an Elastic IP address and associate it with a VPC that is defined in the same template, you must declare a dependency on the VPC-gateway attachment by using the [DependsOn Attribute](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-dependson.html) on this resource.
	Domain?: string
	// The ID of the instance.
	// Updates to the ``InstanceId`` property may require *some interruptions*. Updates on an EIP reassociates the address on its associated resource.
	InstanceId?: string
	// The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it. For more information, see [Allocate sequential Elastic IP addresses from an IPAM pool](https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-eip-pool.html) in the *Amazon VPC IPAM User Guide*.
	IpamPoolId?: string
	// A unique set of Availability Zones, Local Zones, or Wavelength Zones from which AWS advertises IP addresses. Use this parameter to limit the IP address to this location. IP addresses cannot move between network border groups.
	// Use [DescribeAvailabilityZones](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html) to view the network border groups.
	NetworkBorderGroup?: string
	// The ID of an address pool that you own. Use this parameter to let Amazon EC2 select an address from the address pool.
	// Updates to the ``PublicIpv4Pool`` property may require *some interruptions*. Updates on an EIP reassociates the address on its associated resource.
	PublicIpv4Pool?: string
	// Any tags assigned to the Elastic IP address.
	// Updates to the ``Tags`` property may require *some interruptions*. Updates on an EIP reassociates the address on its associated resource.
	Tags?: [...#Tag]
	// The Elastic IP address you are accepting for transfer. You can only accept one transferred address. For more information on Elastic IP address transfers, see [Transfer Elastic IP addresses](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro) in the *Amazon Virtual Private Cloud User Guide*.
	TransferAddress?: string
}

#Tag: {
	// The tag key.
	Key: string
	// The tag value.
	Value: string
}
