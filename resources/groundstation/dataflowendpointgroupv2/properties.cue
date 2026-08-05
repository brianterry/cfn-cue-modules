package dataflowendpointgroupv2

#Properties: {
	// Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a POSTPASS state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the POSTPASS state.
	ContactPostPassDurationSeconds?: int & >=30 & <=480
	// Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a PREPASS state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the PREPASS state.
	ContactPrePassDurationSeconds?: int & >=30 & <=480
	Endpoints?: [...#CreateEndpointDetails]
	Tags?: [...#Tag]
}

#ConnectionDetails: {
	// Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.
	Mtu?: int & >=1400 & <=1500
	SocketAddress: #SocketAddress
}

#CreateEndpointDetails: {
	DownlinkAwsGroundStationAgentEndpoint?: #DownlinkAwsGroundStationAgentEndpoint
	UplinkAwsGroundStationAgentEndpoint?: #UplinkAwsGroundStationAgentEndpoint
}

#DownlinkAwsGroundStationAgentEndpoint: {
	DataflowDetails: #DownlinkDataflowDetails
	Name: string & =~"^[ a-zA-Z0-9_:-]{1,256}$"
}

#DownlinkAwsGroundStationAgentEndpointDetails: {
	AgentStatus?: #AgentStatus
	AuditResults?: #AuditResults
	DataflowDetails: #DownlinkDataflowDetails
	Name: string & =~"^[ a-zA-Z0-9_:-]{1,256}$"
}

#DownlinkConnectionDetails: {
	AgentIpAndPortAddress: #RangedConnectionDetails
	EgressAddressAndPort: #ConnectionDetails
}

#DownlinkDataflowDetails: {
	AgentConnectionDetails?: #DownlinkConnectionDetails
}

#EndpointDetails: {
	DownlinkAwsGroundStationAgentEndpoint?: #DownlinkAwsGroundStationAgentEndpointDetails
	UplinkAwsGroundStationAgentEndpoint?: #UplinkAwsGroundStationAgentEndpointDetails
}

#IntegerRange: {
	// A maximum value.
	Maximum: int
	// A minimum value.
	Minimum: int
}

#RangedConnectionDetails: {
	// Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.
	Mtu?: int & >=1400 & <=1500
	SocketAddress: #RangedSocketAddress
}

#RangedSocketAddress: {
	// IPv4 socket address.
	Name: string & =~"^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$"
	// Port range of a socket address.
	PortRange: #IntegerRange
}

#SocketAddress: {
	// IPv4 socket address.
	Name: string
	// Port of a socket address.
	Port: int
}

#Tag: {
	Key: string & =~"^[ a-zA-Z0-9\\+\\-=._:/@]{1,128}$"
	Value: string & =~"^[ a-zA-Z0-9\\+\\-=._:/@]{1,256}$"
}

#UplinkAwsGroundStationAgentEndpoint: {
	DataflowDetails: #UplinkDataflowDetails
	Name: string & =~"^[ a-zA-Z0-9_:-]{1,256}$"
}

#UplinkAwsGroundStationAgentEndpointDetails: {
	AgentStatus?: #AgentStatus
	AuditResults?: #AuditResults
	DataflowDetails: #UplinkDataflowDetails
	Name: string & =~"^[ a-zA-Z0-9_:-]{1,256}$"
}

#UplinkConnectionDetails: {
	AgentIpAndPortAddress: #RangedConnectionDetails
	IngressAddressAndPort: #ConnectionDetails
}

#UplinkDataflowDetails: {
	AgentConnectionDetails?: #UplinkConnectionDetails
}
