package bridge

#Properties: {
	EgressGatewayBridge?: #EgressGatewayBridge
	IngressGatewayBridge?: #IngressGatewayBridge
	// The name of the bridge.
	Name: string
	// The outputs on this bridge.
	Outputs?: [...#BridgeOutput]
	// The placement Amazon Resource Number (ARN) of the bridge.
	PlacementArn: string
	SourceFailoverConfig?: #FailoverConfig
	// The sources on this bridge.
	Sources: [...#BridgeSource]
}

#BridgeFlowSource: {
	// The ARN of the cloud flow used as a source of this bridge.
	FlowArn: string
	// The name of the VPC interface attachment to use for this source.
	FlowVpcInterfaceAttachment?: #VpcInterfaceAttachment
	// The name of the flow source.
	Name: string
}

#BridgeNetworkOutput: {
	// The network output IP Address.
	IpAddress: string
	// The network output name.
	Name: string
	// The network output's gateway network name.
	NetworkName: string
	// The network output port.
	Port: int
	// The network output protocol.
	Protocol: #ProtocolEnum
	// The network output TTL.
	Ttl: int
}

#BridgeNetworkSource: {
	// The network source multicast IP.
	MulticastIp: string
	// The settings related to the multicast source.
	MulticastSourceSettings?: #MulticastSourceSettings
	// The name of the network source.
	Name: string
	// The network source's gateway network name.
	NetworkName: string
	// The network source port.
	Port: int
	// The network source protocol.
	Protocol: #ProtocolEnum
}

#BridgeOutput: {
	NetworkOutput?: #BridgeNetworkOutput
}

#BridgeSource: {
	FlowSource?: #BridgeFlowSource
	NetworkSource?: #BridgeNetworkSource
}

#EgressGatewayBridge: {
	// The maximum expected bitrate of the egress bridge.
	MaxBitrate: int
}

#FailoverConfig: {
	// The type of failover you choose for this flow. FAILOVER allows switching between different streams.
	FailoverMode: #FailoverModeEnum
	// The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams.
	SourcePriority?: #SourcePriority
	State?: #FailoverConfigStateEnum
}

#IngressGatewayBridge: {
	// The maximum expected bitrate of the ingress bridge.
	MaxBitrate: int
	// The maximum number of outputs on the ingress bridge.
	MaxOutputs: int
}

#MulticastSourceSettings: {
	// The IP address of the source for source-specific multicast (SSM).
	MulticastSourceIp?: string
}

#SourcePriority: {
	// The name of the source you choose as the primary source for this flow.
	PrimarySource?: string
}

#VpcInterfaceAttachment: {
	// The name of the VPC interface to use for this resource.
	VpcInterfaceName?: string
}
