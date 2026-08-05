package networkinsightsaccessscope

#Properties: {
	ExcludePaths?: [...#AccessScopePathRequest]
	MatchPaths?: [...#AccessScopePathRequest]
	Tags?: [...#Tag]
}

#AccessScopePathRequest: {
	Destination?: #PathStatementRequest
	Source?: #PathStatementRequest
	ThroughResources?: [...#ThroughResourcesStatementRequest]
}

#PacketHeaderStatementRequest: {
	DestinationAddresses?: [...string]
	DestinationPorts?: [...string]
	DestinationPrefixLists?: [...string]
	Protocols?: [...#Protocol]
	SourceAddresses?: [...string]
	SourcePorts?: [...string]
	SourcePrefixLists?: [...string]
}

#PathStatementRequest: {
	PacketHeaderStatement?: #PacketHeaderStatementRequest
	ResourceStatement?: #ResourceStatementRequest
}

#ResourceStatementRequest: {
	ResourceTypes?: [...string]
	Resources?: [...string]
}

#Tag: {
	Key: string
	Value?: string
}

#ThroughResourcesStatementRequest: {
	ResourceStatement?: #ResourceStatementRequest
}
