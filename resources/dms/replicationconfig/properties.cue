package replicationconfig

import "strings"

#Properties: {
	ComputeConfig: #ComputeConfig
	// A unique identifier of replication configuration
	ReplicationConfigIdentifier: string
	// JSON settings for Servereless replications that are provisioned using this replication configuration
	ReplicationSettings?: {...}
	// The type of AWS DMS Serverless replication to provision using this replication configuration
	ReplicationType: "full-load" | "full-load-and-cdc" | "cdc"
	// A unique value or name that you get set for a given resource that can be used to construct an Amazon Resource Name (ARN) for that resource
	ResourceIdentifier?: string
	// The Amazon Resource Name (ARN) of the source endpoint for this AWS DMS Serverless replication configuration
	SourceEndpointArn: string
	// JSON settings for specifying supplemental data
	SupplementalSettings?: {...}
	// JSON table mappings for AWS DMS Serverless replications that are provisioned using this replication configuration
	TableMappings: {...}
	// <p>Contains a map of the key-value pairs for the resource tag or tags assigned to the dataset.</p>
	Tags?: [...#Tag]
	// The Amazon Resource Name (ARN) of the target endpoint for this AWS DMS Serverless replication configuration
	TargetEndpointArn: string
}

#ComputeConfig: {
	AvailabilityZone?: string
	DnsNameServers?: string
	KmsKeyId?: string
	MaxCapacityUnits: int
	MinCapacityUnits?: int
	MultiAZ?: bool
	PreferredMaintenanceWindow?: string
	ReplicationSubnetGroupId?: string
	VpcSecurityGroupIds?: [...string]
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
