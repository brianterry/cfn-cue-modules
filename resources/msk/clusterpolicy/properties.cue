package clusterpolicy

#Properties: {
	// The arn of the cluster for the resource policy.
	ClusterArn: string & =~"^arn:[\\w-]+:kafka:[\\w-]+:\\d+:cluster.*\\Z"
	// A policy document containing permissions to add to the specified cluster.
	Policy: {...}
}
