package cluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The ARN of the Cluster.
	Arn: string & =~"^arn:.+:medialive:.+:cluster:.+$"
	// The MediaLive Channels that are currently running on Nodes in this Cluster.
	ChannelIds: [...string]
	// The unique ID of the Cluster.
	Id: string
	State: #ClusterState
}
