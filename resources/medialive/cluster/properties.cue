package cluster

#Properties: {
	ClusterType?: #ClusterType
	// The IAM role your nodes will use.
	InstanceRoleArn?: string & =~"^arn:.+:iam:.+:role/.+$"
	// The user-specified name of the Cluster to be created.
	Name?: string
	NetworkSettings?: #ClusterNetworkSettings
	// A collection of key-value pairs.
	Tags?: [...#Tags]
}

#ClusterNetworkSettings: {
	// Default value if the customer does not define it in channel Output API
	DefaultRoute?: string
	// Network mappings for the cluster
	InterfaceMappings?: [...#InterfaceMapping]
}

#InterfaceMapping: {
	// logical interface name, unique in the list
	LogicalInterfaceName?: string
	// Network Id to be associated with the logical interface name, can be duplicated in list
	NetworkId?: string
}

#InterfaceNetworkMapping: {
	// logical interface name, unique in the list
	LogicalInterfaceName?: string
	// Network Id to be associated with the logical interface name, can be duplicated in list
	NetworkId?: string
}

#Tags: {
	Key?: string
	Value?: string
}
