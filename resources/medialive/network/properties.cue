package network

#Properties: {
	// The list of IP address cidr pools for the network
	IpPools: [...#IpPool]
	// The user-specified name of the Network to be created.
	Name: string
	// The routes for the network
	Routes?: [...#Route]
	// A collection of key-value pairs.
	Tags?: [...#Tags]
}

#IpPool: {
	// IP address cidr pool
	Cidr?: string
}

#Route: {
	// Ip address cidr
	Cidr?: string
	// IP address for the route packet paths
	Gateway?: string
}

#Tags: {
	Key?: string
	Value?: string
}
