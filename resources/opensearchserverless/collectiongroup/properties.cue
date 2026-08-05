package collectiongroup

import "strings"

#Properties: {
	CapacityLimits?: #CapacityLimits
	// The description of the collection group.
	Description?: string & strings.MaxRunes(1000)
	// The generation of Amazon OpenSearch Serverless for the collection group. Valid values are CLASSIC and NEXTGEN.
	Generation?: "CLASSIC" | "NEXTGEN"
	// The name of the collection group.
	Name: string & =~"^[a-z][a-z0-9-]{2,31}$" & strings.MinRunes(3) & strings.MaxRunes(32)
	// Indicates whether standby replicas are used for the collection group.
	StandbyReplicas: "ENABLED" | "DISABLED"
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#CapacityLimits: {
	// The maximum indexing capacity for collections in the group.
	MaxIndexingCapacityInOcu?: number
	// The maximum search capacity for collections in the group.
	MaxSearchCapacityInOcu?: number
	// The minimum indexing capacity for collections in the group.
	MinIndexingCapacityInOcu?: number
	// The minimum search capacity for collections in the group.
	MinSearchCapacityInOcu?: number
}

#Tag: {
	// The key in the key-value pair
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value in the key-value pair
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
