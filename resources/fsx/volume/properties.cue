package volume

#Properties: {
	BackupId?: string
	Name: string
	OntapConfiguration?: #OntapConfiguration
	OpenZFSConfiguration?: #OpenZFSConfiguration
	Tags?: [...#Tag]
	VolumeType?: string
}

#AggregateConfiguration: {
	Aggregates?: [...string]
	ConstituentsPerAggregate?: int
}

#AutocommitPeriod: {
	Type: string
	Value?: int
}

#ClientConfigurations: {
	Clients: string
	Options: [...string]
}

#NfsExports: {
	ClientConfigurations: [...#ClientConfigurations]
}

#OntapConfiguration: {
	AggregateConfiguration?: #AggregateConfiguration
	CopyTagsToBackups?: string
	JunctionPath?: string
	OntapVolumeType?: string
	SecurityStyle?: string
	SizeInBytes?: string
	SizeInMegabytes?: string
	SnaplockConfiguration?: #SnaplockConfiguration
	SnapshotPolicy?: string
	StorageEfficiencyEnabled?: string
	StorageVirtualMachineId: string
	TieringPolicy?: #TieringPolicy
	VolumeStyle?: string
}

#OpenZFSConfiguration: {
	CopyTagsToSnapshots?: bool
	DataCompressionType?: string
	NfsExports?: [...#NfsExports]
	Options?: [...string]
	OriginSnapshot?: #OriginSnapshot
	ParentVolumeId: string
	ReadOnly?: bool
	RecordSizeKiB?: int
	StorageCapacityQuotaGiB?: int
	StorageCapacityReservationGiB?: int
	UserAndGroupQuotas?: [...#UserAndGroupQuotas]
}

#OriginSnapshot: {
	CopyStrategy: string
	SnapshotARN: string
}

#RetentionPeriod: {
	Type: string
	Value?: int
}

#SnaplockConfiguration: {
	AuditLogVolume?: string
	AutocommitPeriod?: #AutocommitPeriod
	PrivilegedDelete?: string
	RetentionPeriod?: #SnaplockRetentionPeriod
	SnaplockType: string
	VolumeAppendModeEnabled?: string
}

#SnaplockRetentionPeriod: {
	DefaultRetention: #RetentionPeriod
	MaximumRetention: #RetentionPeriod
	MinimumRetention: #RetentionPeriod
}

#Tag: {
	Key: string
	Value: string
}

#TieringPolicy: {
	CoolingPeriod?: int
	Name?: string
}

#UserAndGroupQuotas: {
	Id: int
	StorageCapacityQuotaGiB: int
	Type: string
}
