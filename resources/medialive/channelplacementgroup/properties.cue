package channelplacementgroup

#Properties: {
	// The ID of the cluster the node is on.
	ClusterId?: string
	// The name of the channel placement group.
	Name?: string
	// List of nodes added to the channel placement group
	Nodes?: [...string]
	// A collection of key-value pairs.
	Tags?: [...#Tags]
}

#Tags: {
	Key?: string
	Value?: string
}
