package parametergroup

#Properties: {
	// The name of the cache parameter group family that this cache parameter group is compatible with.
	CacheParameterGroupFamily: string
	// The description for this cache parameter group.
	Description: string
	// A comma-delimited list of parameter name/value pairs. For more information see ModifyCacheParameterGroup in the Amazon ElastiCache API Reference Guide.
	Properties?: {...}
	// Tags are composed of a Key/Value pair. You can use tags to categorize and track each parameter group. The tag value null is permitted.
	Tags?: [...#Tag]
}

#Tag: {
	Key: string
	Value: string
}
