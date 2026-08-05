package mesh

#Properties: {
	MeshName?: string
	Spec?: #MeshSpec
	Tags?: [...#Tag]
}

#EgressFilter: {
	Type: string
}

#MeshServiceDiscovery: {
	IpPreference?: string
}

#MeshSpec: {
	EgressFilter?: #EgressFilter
	ServiceDiscovery?: #MeshServiceDiscovery
}

#Tag: {
	Key: string
	Value: string
}
