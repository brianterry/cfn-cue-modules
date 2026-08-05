package subnetgroup

#Properties: {
	// The name for the cache subnet group. This value is stored as a lowercase string.
	CacheSubnetGroupName?: string
	// The description for the cache subnet group.
	Description: string
	// The EC2 subnet IDs for the cache subnet group.
	SubnetIds: [...string]
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
