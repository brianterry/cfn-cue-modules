package table

import "strings"

#Properties: {
	AutoScalingSpecifications?: #AutoScalingSpecification
	BillingMode?: #BillingMode
	CdcSpecification?: #CdcSpecification
	// Indicates whether client side timestamps are enabled (true) or disabled (false) on the table. False by default, once it is enabled it cannot be disabled again.
	ClientSideTimestampsEnabled?: bool
	// Clustering key columns of the table
	ClusteringKeyColumns?: [...#ClusteringKeyColumn]
	// Default TTL (Time To Live) in seconds, where zero is disabled. If the value is greater than zero, TTL is enabled for the entire table and an expiration timestamp is added to each column.
	DefaultTimeToLive?: int & >=0
	EncryptionSpecification?: #EncryptionSpecification
	// Name for Cassandra keyspace
	KeyspaceName: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_]{1,47}$"
	// Partition key columns of the table
	PartitionKeyColumns: [...#Column]
	// Indicates whether point in time recovery is enabled (true) or disabled (false) on the table
	PointInTimeRecoveryEnabled?: bool
	// Non-key columns of the table
	RegularColumns?: [...#Column]
	ReplicaSpecifications?: [...#ReplicaSpecification]
	// Name for Cassandra table
	TableName?: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_]{1,47}$"
	// An array of key-value pairs to apply to this resource
	Tags?: [...#Tag]
	WarmThroughput?: #WarmThroughput
}

#AutoScalingSetting: {
	AutoScalingDisabled?: bool
	MaximumUnits?: int & >=1
	MinimumUnits?: int & >=1
	ScalingPolicy?: #ScalingPolicy
}

#AutoScalingSpecification: {
	ReadCapacityAutoScaling?: #AutoScalingSetting
	WriteCapacityAutoScaling?: #AutoScalingSetting
}

#BillingMode: {
	Mode: #Mode
	ProvisionedThroughput?: #ProvisionedThroughput
}

#CdcSpecification: {
	Status: #CdcStatus
	// An array of key-value pairs to apply to the CDC stream resource
	Tags?: [...#Tag]
	ViewType?: #CdcViewType
}

#CdcStatus: "ENABLED" | "DISABLED"

#CdcViewType: "NEW_IMAGE" | "OLD_IMAGE" | "KEYS_ONLY" | "NEW_AND_OLD_IMAGES"

#ClusteringKeyColumn: {
	Column: #Column
	OrderBy?: "ASC" | "DESC"
}

#Column: {
	ColumnName: string & =~"^[a-zA-Z0-9][a-zA-Z0-9_]{1,47}$"
	ColumnType: string
}

#EncryptionSpecification: {
	EncryptionType: #EncryptionType
	KmsKeyIdentifier?: #KmsKeyIdentifier
}

#EncryptionType: "AWS_OWNED_KMS_KEY" | "CUSTOMER_MANAGED_KMS_KEY"

#KmsKeyIdentifier: string

#Mode: "PROVISIONED" | "ON_DEMAND"

#ProvisionedThroughput: {
	ReadCapacityUnits: int & >=1
	WriteCapacityUnits: int & >=1
}

#ReplicaSpecification: {
	ReadCapacityAutoScaling?: #AutoScalingSetting
	ReadCapacityUnits?: int
	Region: string & strings.MinRunes(2) & strings.MaxRunes(25)
}

#ScalingPolicy: {
	TargetTrackingScalingPolicyConfiguration?: #TargetTrackingScalingPolicyConfiguration
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#TargetTrackingScalingPolicyConfiguration: {
	DisableScaleIn?: bool
	ScaleInCooldown?: int
	ScaleOutCooldown?: int
	TargetValue: int
}

#WarmThroughput: {
	ReadUnitsPerSecond?: int & >=1
	WriteUnitsPerSecond?: int & >=1
}
