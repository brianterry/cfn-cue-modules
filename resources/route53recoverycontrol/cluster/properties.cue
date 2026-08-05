package cluster

import "strings"

#Properties: {
	// Name of a Cluster. You can use any non-white space character in the name
	Name: string & strings.MinRunes(1) & strings.MaxRunes(64)
	// Cluster supports IPv4 endpoints and Dual-stack IPv4 and IPv6 endpoints. NetworkType can be IPV4 or DUALSTACK.
	NetworkType?: "IPV4" | "DUALSTACK"
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#ClusterEndpoint: {
	Endpoint?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Region?: string & strings.MinRunes(1) & strings.MaxRunes(32)
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MaxRunes(256)
}
