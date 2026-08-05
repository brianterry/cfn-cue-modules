package bridgesource

#Properties: {
	// The Amazon Resource Number (ARN) of the bridge.
	BridgeArn: string
	FlowSource?: #BridgeFlowSource
	// The name of the source.
	Name: string
	NetworkSource?: #BridgeNetworkSource
}

#BridgeFlowSource: {
	// The ARN of the cloud flow used as a source of this bridge.
	FlowArn: string
	// The name of the VPC interface attachment to use for this source.
	FlowVpcInterfaceAttachment?: #VpcInterfaceAttachment
}

#BridgeNetworkSource: {
	// The network source multicast IP.
	MulticastIp: string
	// The settings related to the multicast source.
	MulticastSourceSettings?: #MulticastSourceSettings
	// The network source's gateway network name.
	NetworkName: string
	// The network source port.
	Port: int
	// The network source protocol.
	Protocol: #ProtocolEnum
}

#MulticastSourceSettings: {
	// The IP address of the source for source-specific multicast (SSM).
	MulticastSourceIp?: string
}

#VpcInterfaceAttachment: {
	// The name of the VPC interface to use for this resource.
	VpcInterfaceName?: string
}
