package corenetwork

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Owner of the core network
	OwnerAccount: string
	// The Id of core network
	CoreNetworkId: string
	// The ARN (Amazon resource name) of core network
	CoreNetworkArn: string
	// The creation time of core network
	CreatedAt: string
	// The state of core network
	State: string
	// The segments within a core network.
	Segments: [...#CoreNetworkSegment]
	// The network function groups within a core network.
	NetworkFunctionGroups: [...#CoreNetworkNetworkFunctionGroup]
	// The edges within a core network.
	Edges: [...#CoreNetworkEdge]
}
