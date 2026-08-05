package trafficmirrorfilter

#Properties: {
	// The description of a traffic mirror filter.
	Description?: string
	// The network service that is associated with the traffic mirror filter.
	NetworkServices?: [...#TrafficMirrorNetworkService]
	// The tags for a traffic mirror filter.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}

#TrafficMirrorNetworkService: "amazon-dns"
