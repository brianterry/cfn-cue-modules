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

#PathFilter: {
	DestinationAddress?: #IpAddress
	DestinationPortRange?: #FilterPortRange
	SourceAddress?: #IpAddress
	SourcePortRange?: #FilterPortRange
}

#Tag: {
	Key: string
	Value?: string
}
