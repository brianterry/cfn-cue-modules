package multiregioncluster

import "strings"

#Properties: {
	// Description of the multi region cluster.
	Description?: string
	// The engine type used by the multi region cluster.
	Engine?: string
	// The Redis engine version used by the multi region cluster.
	EngineVersion?: string
	// The name of the Multi Region cluster. This value must be unique as it also serves as the multi region cluster identifier.
	MultiRegionClusterNameSuffix?: string & =~"[a-z][a-z0-9\\-]*"
	// The name of the parameter group associated with the multi region cluster.
	MultiRegionParameterGroupName?: string
	// The compute and memory capacity of the nodes in the multi region cluster.
	NodeType: string
	// The number of shards the multi region cluster will contain.
	NumShards?: int
	// A flag that enables in-transit encryption when set to true.

You cannot modify the value of TransitEncryptionEnabled after the cluster is created. To enable in-transit encryption on a cluster you must set TransitEncryptionEnabled to true when you create a cluster.
	TLSEnabled?: bool
	// An array of key-value pairs to apply to this multi region cluster.
	Tags?: [...#Tag]
	// An enum string value that determines the update strategy for scaling. Possible values are 'COORDINATED' and 'UNCOORDINATED'. Default is 'COORDINATED'.
	UpdateStrategy?: "COORDINATED" | "UNCOORDINATED"
}

#Tag: {
	// The key for the tag. May not be null.
	Key: string & =~"^(?!aws:)(?!memorydb:)[a-zA-Z0-9 _\\.\\/=+:\\-@]{1,128}$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The tag's value. May be null.
	Value: string & =~"^(?!aws:)(?!memorydb:)[a-zA-Z0-9 _\\.\\/=+:\\-@]{1,256}$" & strings.MinRunes(1) & strings.MaxRunes(256)
}
