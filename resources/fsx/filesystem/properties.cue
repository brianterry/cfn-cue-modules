package filesystem

#Properties: {
	BackupId?: string
	FileSystemType: string
	FileSystemTypeVersion?: string
	KmsKeyId?: string
	LustreConfiguration?: #LustreConfiguration
	NetworkType?: string
	OntapConfiguration?: #OntapConfiguration
	OpenZFSConfiguration?: #OpenZFSConfiguration
	SecurityGroupIds?: [...string]
	StorageCapacity?: int
	StorageType?: string
	SubnetIds: [...string]
	Tags?: [...#Tag]
	WindowsConfiguration?: #WindowsConfiguration
}

#AuditLogConfiguration: {
	AuditLogDestination?: string
	FileAccessAuditLogLevel: string
	FileShareAccessAuditLogLevel: string
}

#ClientConfigurations: {
	Clients?: string
	Options?: [...string]
}

#DataReadCacheConfiguration: {
	SizeGiB?: int
	SizingMode?: string
}

#DiskIopsConfiguration: {
	Iops?: int
	Mode?: string
}

#FsrmConfiguration: {
	EventLogDestination?: string
	FsrmServiceEnabled: bool
}

#LustreConfiguration: {
	AutoImportPolicy?: string
	AutomaticBackupRetentionDays?: int
	CopyTagsToBackups?: bool
	DailyAutomaticBackupStartTime?: string
	DataCompressionType?: string
	DataReadCacheConfiguration?: #DataReadCacheConfiguration
	DeploymentType?: string
	DriveCacheType?: string
	EfaEnabled?: bool
	ExportPath?: string
	ImportPath?: string
	ImportedFileChunkSize?: int
	MetadataConfiguration?: #MetadataConfiguration
	PerUnitStorageThroughput?: int
	ThroughputCapacity?: int
	WeeklyMaintenanceStartTime?: string
}

#MetadataConfiguration: {
	Iops?: int
	Mode?: string
}

#NfsExports: {
	ClientConfigurations?: [...#ClientConfigurations]
}

#OntapConfiguration: {
	AutomaticBackupRetentionDays?: int
	DailyAutomaticBackupStartTime?: string
	DeploymentType: string
	DiskIopsConfiguration?: #DiskIopsConfiguration
	EndpointIpAddressRange?: string
	EndpointIpv6AddressRange?: string
	FsxAdminPassword?: string
	HAPairs?: int
	PreferredSubnetId?: string
	RouteTableIds?: [...string]
	ThroughputCapacity?: int
	ThroughputCapacityPerHAPair?: int
	WeeklyMaintenanceStartTime?: string
}

#OpenZFSConfiguration: {
	AutomaticBackupRetentionDays?: int
	CopyTagsToBackups?: bool
	CopyTagsToVolumes?: bool
	DailyAutomaticBackupStartTime?: string
	DeploymentType: string
	DiskIopsConfiguration?: #DiskIopsConfiguration
	EndpointIpAddressRange?: string
	EndpointIpv6AddressRange?: string
	Options?: [...string]
	PreferredSubnetId?: string
	ReadCacheConfiguration?: #ReadCacheConfiguration
	RootVolumeConfiguration?: #RootVolumeConfiguration
	RouteTableIds?: [...string]
	ThroughputCapacity?: int
	WeeklyMaintenanceStartTime?: string
}

#ReadCacheConfiguration: {
	SizeGiB?: int
	SizingMode?: string
}

#RootVolumeConfiguration: {
	CopyTagsToSnapshots?: bool
	DataCompressionType?: string
	NfsExports?: [...#NfsExports]
	ReadOnly?: bool
	RecordSizeKiB?: int
	UserAndGroupQuotas?: [...#UserAndGroupQuotas]
}

#SelfManagedActiveDirectoryConfiguration: {
	DnsIps?: [...string]
	DomainJoinServiceAccountSecret?: string
	DomainName?: string
	FileSystemAdministratorsGroup?: string
	OrganizationalUnitDistinguishedName?: string
	Password?: string
	UserName?: string
}

#Tag: {
	Key: string
	Value: string
}

#UserAndGroupQuotas: {
	Id?: int
	StorageCapacityQuotaGiB?: int
	Type?: string
}

#WindowsConfiguration: {
	ActiveDirectoryId?: string
	Aliases?: [...string]
	AuditLogConfiguration?: #AuditLogConfiguration
	AutomaticBackupRetentionDays?: int
	CopyTagsToBackups?: bool
	DailyAutomaticBackupStartTime?: string
	DeploymentType?: string
	DiskIopsConfiguration?: #DiskIopsConfiguration
	FsrmConfiguration?: #FsrmConfiguration
	PreferredSubnetId?: string
	SelfManagedActiveDirectoryConfiguration?: #SelfManagedActiveDirectoryConfiguration
	ThroughputCapacity: int
	WeeklyMaintenanceStartTime?: string
}
