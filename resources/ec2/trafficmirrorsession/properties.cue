package trafficmirrorsession

#Properties: {
	// The description of the Traffic Mirror session.
	Description?: string
	// The ID of the source network interface.
	NetworkInterfaceId: string
	// The ID of the account that owns the Traffic Mirror session.
	OwnerId?: string
	// The number of bytes in each packet to mirror.
	PacketLength?: int
	// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
	SessionNumber: int
	// The tags assigned to the Traffic Mirror session.
	Tags?: [...#Tag]
	// The ID of a Traffic Mirror filter.
	TrafficMirrorFilterId: string
	// The ID of a Traffic Mirror target.
	TrafficMirrorTargetId: string
	// The VXLAN ID for the Traffic Mirror session.
	VirtualNetworkId?: int
}

#Tag: {
	Key: string
	Value: string
}

#TrafficMirrorSessionField: "packet-length" | "description" | "virtual-network-id"
