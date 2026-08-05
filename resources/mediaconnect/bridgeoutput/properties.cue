package bridgeoutput

#Properties: {
	// The Amazon Resource Number (ARN) of the bridge.
	BridgeArn: string
	// The network output name.
	Name: string
	// The output of the bridge.
	NetworkOutput: #BridgeNetworkOutput
}

#BridgeNetworkOutput: {
	// The network output IP Address.
	IpAddress: string
	// The network output's gateway network name.
	NetworkName: string
	// The network output port.
	Port: int
	// The network output protocol.
	Protocol: "rtp-fec" | "rtp" | "udp"
	// The network output TTL.
	Ttl: int
}
