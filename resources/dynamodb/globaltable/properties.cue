package globaltable

import "strings"

#Properties: {
	AttributeDefinitions?: [...#AttributeDefinition]
	BillingMode?: string
	GlobalSecondaryIndexes?: [...#GlobalSecondaryIndex]
	GlobalTableSourceArn?: string
	GlobalTableWitnesses?: [...#GlobalTableWitness]
	KeySchema?: [...#KeySchema]
	LocalSecondaryIndexes?: [...#LocalSecondaryIndex]
	MultiRegionConsistency?: "EVENTUAL" | "STRONG"
	ReadOnDemandThroughputSettings?: #ReadOnDemandThroughputSettings
	ReadProvisionedThroughputSettings?: #GlobalReadProvisionedThroughputSettings
	Replicas: [...#ReplicaSpecification]
	SSESpecification?: #SSESpecification
	StreamSpecification?: #StreamSpecification
	TableName?: string
	TimeToLiveSpecification?: #TimeToLiveSpecification
	WarmThroughput?: #WarmThroughput
	WriteOnDemandThroughputSettings?: #WriteOnDemandThroughputSettings
	WriteProvisionedThroughputSettings?: #WriteProvisionedThroughputSettings
}

#AttributeDefinition: {
	AttributeName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	AttributeType: string
}

#CapacityAutoScalingSettings: {
	MaxCapacity: int & >=1
	MinCapacity: int & >=1
	SeedCapacity?: int & >=1
	TargetTrackingScalingPolicyConfiguration: #TargetTrackingScalingPolicyConfiguration
}

#ContributorInsightsSpecification: {
	Enabled: bool
	Mode?: "ACCESSED_AND_THROTTLED_KEYS" | "THROTTLED_KEYS"
}

#GlobalReadProvisionedThroughputSettings: {
	ReadCapacityUnits?: int & >=1
}

#GlobalSecondaryIndex: {
	IndexName: string & strings.MinRunes(3) & strings.MaxRunes(255)
	KeySchema: [...#KeySchema]
	Projection: #Projection
	ReadOnDemandThroughputSettings?: #ReadOnDemandThroughputSettings
	ReadProvisionedThroughputSettings?: #GlobalReadProvisionedThroughputSettings
	WarmThroughput?: #WarmThroughput
	WriteOnDemandThroughputSettings?: #WriteOnDemandThroughputSettings
	WriteProvisionedThroughputSettings?: #WriteProvisionedThroughputSettings
}

#GlobalTableWitness: {
	Region?: string
}

#KeySchema: {
	AttributeName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	KeyType: string
}

#KinesisStreamSpecification: {
	ApproximateCreationDateTimePrecision?: "MICROSECOND" | "MILLISECOND"
	StreamArn: string
}

#LocalSecondaryIndex: {
	IndexName: string & strings.MinRunes(3) & strings.MaxRunes(255)
	KeySchema: [...#KeySchema]
	Projection: #Projection
}

#PointInTimeRecoverySpecification: {
	PointInTimeRecoveryEnabled?: bool
	RecoveryPeriodInDays?: int & >=1 & <=35
}

#Projection: {
	NonKeyAttributes?: [...string]
	ProjectionType?: string
}

#ReadOnDemandThroughputSettings: {
	MaxReadRequestUnits?: int & >=1
}

#ReadProvisionedThroughputSettings: {
	ReadCapacityAutoScalingSettings?: #CapacityAutoScalingSettings
	ReadCapacityUnits?: int & >=1
}

#ReplicaGlobalSecondaryIndexSpecification: {
	ContributorInsightsSpecification?: #ContributorInsightsSpecification
	IndexName: string & strings.MinRunes(3) & strings.MaxRunes(255)
	ReadOnDemandThroughputSettings?: #ReadOnDemandThroughputSettings
	ReadProvisionedThroughputSettings?: #ReadProvisionedThroughputSettings
}

#ReplicaSSESpecification: {
	KMSMasterKeyId: string | string | string
}

#ReplicaSpecification: {
	ContributorInsightsSpecification?: #ContributorInsightsSpecification
	DeletionProtectionEnabled?: bool
	GlobalSecondaryIndexes?: [...#ReplicaGlobalSecondaryIndexSpecification]
	GlobalTableSettingsReplicationMode?: "ENABLED" | "DISABLED"
	KinesisStreamSpecification?: #KinesisStreamSpecification
	PointInTimeRecoverySpecification?: #PointInTimeRecoverySpecification
	ReadOnDemandThroughputSettings?: #ReadOnDemandThroughputSettings
	ReadProvisionedThroughputSettings?: #ReadProvisionedThroughputSettings
	Region: string
	ReplicaStreamSpecification?: #ReplicaStreamSpecification
	ResourcePolicy?: #ResourcePolicy
	SSESpecification?: #ReplicaSSESpecification
	TableClass?: string
	Tags?: [...#Tag]
}

#ReplicaStreamSpecification: {
	ResourcePolicy: #ResourcePolicy
}

#ResourcePolicy: {
	PolicyDocument: {...}
}

#SSESpecification: {
	SSEEnabled: bool
	SSEType?: string
}

#StreamSpecification: {
	StreamViewType: string
}

#Tag: {
	Key: string
	Value: string
}

#TargetTrackingScalingPolicyConfiguration: {
	DisableScaleIn?: bool
	ScaleInCooldown?: int & >=0
	ScaleOutCooldown?: int & >=0
	TargetValue: number
}

#TimeToLiveSpecification: {
	AttributeName?: string
	Enabled: bool
}

#WarmThroughput: {
	ReadUnitsPerSecond?: int & >=1
	WriteUnitsPerSecond?: int & >=1
}

#WriteOnDemandThroughputSettings: {
	MaxWriteRequestUnits?: int & >=1
}

#WriteProvisionedThroughputSettings: {
	WriteCapacityAutoScalingSettings?: #CapacityAutoScalingSettings
}
