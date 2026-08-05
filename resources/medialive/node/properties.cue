package node

#Properties: {
	// The ID of the Cluster that the Node belongs to.
	ClusterId: string
	// The user-specified name of the Node.
	Name?: string
	// An array of interface mappings for the Node.
	NodeInterfaceMappings?: [...#NodeInterfaceMapping]
	Role?: #NodeRole
	// An array of SDI source mappings.
	SdiSourceMappings?: [...#SdiSourceMapping]
	// A collection of key-value pairs.
	Tags?: [...#Tag]
}

#NodeInterfaceMapping: {
	// The logical name for this interface.
	LogicalInterfaceName?: string
	// The network interface mode.
	NetworkInterfaceMode?: "NAT" | "BRIDGE"
	// The physical interface name.
	PhysicalInterfaceName?: string
}

#NodeInterfaceMappingCreateRequest: {
	// The logical name for this interface.
	LogicalInterfaceName?: string
	// The network interface mode.
	NetworkInterfaceMode?: "NAT" | "BRIDGE"
	// The physical interface name.
	PhysicalInterfaceName?: string
}

#SdiSourceMapping: {
	// The card number.
	CardNumber?: int
	// The channel number.
	ChannelNumber?: int
	// The SDI source.
	SdiSource?: string
}

#Tag: {
	// The key name of the tag.
	Key: string
	// The value for the tag.
	Value: string
}
