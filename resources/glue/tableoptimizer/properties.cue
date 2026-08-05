package tableoptimizer

#Properties: {
	CatalogId: string
	DatabaseName: string
	TableName: string
	TableOptimizerConfiguration: #TableOptimizerConfiguration
	Type: string
}

#CompactionConfiguration: {
	IcebergConfiguration?: #IcebergCompactionConfiguration
}

#IcebergCompactionConfiguration: {
	DeleteFileThreshold?: int
	MinInputFiles?: int
	Strategy?: string
}

#IcebergConfiguration: {
	Location?: string
	OrphanFileRetentionPeriodInDays?: int
}

#IcebergRetentionConfiguration: {
	CleanExpiredFiles?: bool
	NumberOfSnapshotsToRetain?: int
	SnapshotRetentionPeriodInDays?: int
}

#OrphanFileDeletionConfiguration: {
	IcebergConfiguration?: #IcebergConfiguration
}

#RetentionConfiguration: {
	IcebergConfiguration?: #IcebergRetentionConfiguration
}

#TableOptimizerConfiguration: {
	CompactionConfiguration?: #CompactionConfiguration
	Enabled: bool
	OrphanFileDeletionConfiguration?: #OrphanFileDeletionConfiguration
	RetentionConfiguration?: #RetentionConfiguration
	RoleArn: string
	VpcConfiguration?: #VpcConfiguration
}

#VpcConfiguration: {
	GlueConnectionName?: string
}
