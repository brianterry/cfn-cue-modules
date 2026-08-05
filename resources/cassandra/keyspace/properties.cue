package keyspace

import "strings"

#Properties: {
	// Indicates whether client-side timestamps are enabled (true) or disabled (false) for all tables in the keyspace. To add a Region to a single-Region keyspace with at least one table, the value must be set to true. After you enabled client-side timestamps for a table, you can’t disable it again.
	ClientSideTimestampsEnabled?: bool
	// Name for Cassandra keyspace
	KeyspaceName?: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_]{1,47}$"
	ReplicationSpecification?: #ReplicationSpecification
	Tags?: [...#Tag]
}

#ReplicationSpecification: {
	RegionList?: #RegionList
	ReplicationStrategy?: "SINGLE_REGION" | "MULTI_REGION"
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
