package dbcluster

#Properties: {
	AvailabilityZones?: [...string]
	BackupRetentionPeriod?: int
	CopyTagsToSnapshot?: bool
	DBClusterIdentifier?: string
	DBClusterParameterGroupName?: string
	DBSubnetGroupName?: string
	DeletionProtection?: bool
	EnableCloudwatchLogsExports?: [...string]
	EngineVersion?: string
	GlobalClusterIdentifier?: string
	KmsKeyId?: string
	ManageMasterUserPassword?: bool
	MasterUserPassword?: string
	MasterUserSecretKmsKeyId?: string
	MasterUsername?: string
	NetworkType?: string
	Port?: int
	PreferredBackupWindow?: string
	PreferredMaintenanceWindow?: string
	RestoreToTime?: string
	RestoreType?: string
	RotateMasterUserPassword?: bool
	ServerlessV2ScalingConfiguration?: #ServerlessV2ScalingConfiguration
	SnapshotIdentifier?: string
	SourceDBClusterIdentifier?: string
	StorageEncrypted?: bool
	StorageType?: string
	Tags?: [...#Tag]
	UseLatestRestorableTime?: bool
	VpcSecurityGroupIds?: [...string]
}

#ServerlessV2ScalingConfiguration: {
	MaxCapacity: number
	MinCapacity: number
}

#Tag: {
	Key: string
	Value: string
}
