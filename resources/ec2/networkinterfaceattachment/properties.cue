package networkinterfaceattachment

#Properties: {
	// Whether to delete the network interface when the instance terminates. By default, this value is set to ``true``.
	DeleteOnTermination?: bool
	// The network interface's position in the attachment order. For example, the first attached network interface has a ``DeviceIndex`` of 0.
	DeviceIndex: string
	// The number of ENA queues created with the instance.
	EnaQueueCount?: int
	// Configures ENA Express for the network interface that this action attaches to the instance.
	EnaSrdSpecification?: #EnaSrdSpecification
	// The ID of the instance to which you will attach the ENI.
	InstanceId: string
	// The ID of the ENI that you want to attach.
	NetworkInterfaceId: string
}

#EnaSrdSpecification: {
	// Indicates whether ENA Express is enabled for the network interface.
	EnaSrdEnabled?: bool
	// Configures ENA Express for UDP network traffic.
	EnaSrdUdpSpecification?: {
		EnaSrdUdpEnabled?: bool
	}
}
