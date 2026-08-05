package dataflowendpointgroup

#Properties: {
	// Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a POSTPASS state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the POSTPASS state.
	ContactPostPassDurationSeconds?: int
	// Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a PREPASS state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the PREPASS state.
	ContactPrePassDurationSeconds?: int
	EndpointDetails: [...#EndpointDetails]
	Tags?: [...#Tag]
}

#AwsGroundStationAgentEndpoint: {
	AgentStatus?: #AgentStatus
	AuditResults?: #AuditResults
	EgressAddress?: #ConnectionDetails
	IngressAddress?: #RangedConnectionDetails
	Name?: string & =~"^[ a-zA-Z0-9_:-]{1,256}$"
}

#ConnectionDetails: {
	// Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.
	Mtu?: int
	SocketAddress?: #SocketAddress
}

#DataflowEndpoint: {
	Address?: #SocketAddress
	Mtu?: int
	Name?: string & =~"^[ a-zA-Z0-9_:-]{1,256}$"
}

#EndpointDetails: {
	AwsGroundStationAgentEndpoint?: #AwsGroundStationAgentEndpoint
	Endpoint?: #DataflowEndpoint
	SecurityDetails?: #SecurityDetails
}

#IntegerRange: {
	// A maximum value.
	Maximum?: int
	// A minimum value.
	Minimum?: int
}

#RangedConnectionDetails: {
	// Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.
	Mtu?: int
	SocketAddress?: #RangedSocketAddress
}

#RangedSocketAddress: {
	// IPv4 socket address.
	Name?: string
	// Port range of a socket address.
	PortRange?: #IntegerRange
}

#SecurityDetails: {
	RoleArn?: string & =~"^(arn:(aws[a-zA-Z-]*)?:[a-z0-9-.]+:.*)|()$"
	SecurityGroupIds?: [...string]
	SubnetIds?: [...string]
}

#SocketAddress: {
	Name?: string
	Port?: int
}

#Tag: {
	Key: string & =~"^[ a-zA-Z0-9\\+\\-=._:/@]{1,128}$"
	Value: string & =~"^[ a-zA-Z0-9\\+\\-=._:/@]{1,256}$"
}
