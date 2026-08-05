package corenetwork

#Properties: {
	// The description of core network
	Description?: string
	// The ID of the global network that your core network is a part of.
	GlobalNetworkId: string
	// Live policy document for the core network, you must provide PolicyDocument in Json Format
	PolicyDocument?: {...}
	// The tags for the global network.
	Tags?: [...#Tag]
}

#CoreNetworkEdge: {
	// The ASN of a core network edge.
	Asn?: number
	// The Region where a core network edge is located.
	EdgeLocation?: string
	InsideCidrBlocks?: [...string]
}

#CoreNetworkNetworkFunctionGroup: {
	EdgeLocations?: [...string]
	// Name of network function group
	Name?: string
	Segments?: {
		SendTo?: [...string]
		SendVia?: [...string]
	}
}

#CoreNetworkSegment: {
	EdgeLocations?: [...string]
	// Name of segment
	Name?: string
	SharedSegments?: [...string]
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string
}
