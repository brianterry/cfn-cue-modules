package eipassociation

#Properties: {
	// The allocation ID. This is required.
	AllocationId?: string
	EIP?: string | string
	// The ID of the instance. The instance must have exactly one attached network interface. You can specify either the instance ID or the network interface ID, but not both.
	InstanceId?: string
	// The ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID.
 You can specify either the instance ID or the network interface ID, but not both.
	NetworkInterfaceId?: string
	// The primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
	PrivateIpAddress?: string
}
