package networkinsightspath

#Properties: {
	Destination?: string
	DestinationIp?: #IpAddress
	DestinationPort?: #Port
	FilterAtDestination?: #PathFilter
	FilterAtSource?: #PathFilter
	Protocol: #Protocol
	Source: string
	SourceIp?: #IpAddress
	Tags?: [...#Tag]
}

#FilterPortRange: {
	FromPort?: int
	ToPort?: int
}

#IpAddress: string

#PathFilter: {
	DestinationAddress?: #IpAddress
	DestinationPortRange?: #FilterPortRange
	SourceAddress?: #IpAddress
	SourcePortRange?: #FilterPortRange
}

#Port: int

#Protocol: "tcp" | "udp"

#Tag: {
	Key: string
	Value?: string
}

#Tags: [...#Tag]
