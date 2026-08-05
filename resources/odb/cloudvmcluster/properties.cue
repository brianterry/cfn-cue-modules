package cloudvmcluster

import "strings"

#Properties: {
	// The unique identifier of the Exadata infrastructure that this VM cluster belongs to.
	CloudExadataInfrastructureId?: string
	// The name of the Grid Infrastructure (GI) cluster.
	ClusterName?: string & =~"^[a-zA-Z][a-zA-Z0-9-]*$" & strings.MinRunes(1) & strings.MaxRunes(11)
	// The number of CPU cores enabled on the VM cluster.
	CpuCoreCount?: int & >=0 & <=368
	// The set of diagnostic collection options enabled for the VM cluster.
	DataCollectionOptions?: #DataCollectionOptions
	// The size of the data disk group, in terabytes (TB), that's allocated for the VM cluster.
	DataStorageSizeInTBs?: number
	// The amount of local node storage, in gigabytes (GB), that's allocated for the VM cluster.
	DbNodeStorageSizeInGBs?: int
	// The list of database servers for the VM cluster.
	DbServers?: [...string]
	// The user-friendly name for the VM cluster.
	DisplayName?: string & =~"^[a-zA-Z_](?!.*--)[a-zA-Z0-9_-]*$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The software version of the Oracle Grid Infrastructure (GI) for the VM cluster.
	GiVersion?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The host name for the VM cluster.
	Hostname?: string & =~"^[a-zA-Z][a-zA-Z0-9-]*[a-zA-Z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(12)
	// Indicates whether database backups to local Exadata storage is enabled for the VM cluster.
	IsLocalBackupEnabled?: bool
	// Indicates whether the VM cluster is configured with a sparse disk group.
	IsSparseDiskgroupEnabled?: bool
	// The Oracle license model applied to the VM cluster.
	LicenseModel?: "BRING_YOUR_OWN_LICENSE" | "LICENSE_INCLUDED"
	// The amount of memory, in gigabytes (GB), that's allocated for the VM cluster.
	MemorySizeInGBs?: int
	// The unique identifier of the ODB network for the VM cluster.
	OdbNetworkId?: string
	// Property description not available.
	ScanListenerPortTcp?: int & >=1024 & <=8999
	// The public key portion of one or more key pairs used for SSH access to the VM cluster.
	SshPublicKeys?: [...string]
	// The operating system version of the image chosen for the VM cluster.
	SystemVersion?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// Tags to assign to the Vm Cluster.
	Tags?: [...#Tag]
	// The time zone of the VM cluster.
	TimeZone?: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#DataCollectionOptions: {
	// Indicates whether diagnostic collection is enabled for the VM cluster.
	IsDiagnosticsEventsEnabled?: bool
	// Indicates whether health monitoring is enabled for the VM cluster.
	IsHealthMonitoringEnabled?: bool
	// Indicates whether incident logs are enabled for the cloud VM cluster.
	IsIncidentLogsEnabled?: bool
}

#DbNode: {
	// The Oracle Cloud ID (OCID) of the backup IP address that's associated with the DB node.
	BackupIpId?: string
	// The OCID of the second backup virtual network interface card (VNIC) for the DB node.
	BackupVnic2Id?: string
	// The number of CPU cores enabled on the DB node.
	CpuCoreCount?: int
	// The Amazon Resource Name (ARN) of the DB node.
	DbNodeArn?: string
	// The unique identifier of the DB node.
	DbNodeId?: string
	// The amount of local node storage, in gigabytes (GB), that's allocated on the DB node.
	DbNodeStorageSizeInGBs?: int
	// The unique identifier of the database server that's associated with the DB node.
	DbServerId: string
	// The OCID of the DB system.
	DbSystemId?: string
	// The OCID of the host IP address that's associated with the DB node.
	HostIpId?: string
	// The host name for the DB node.
	Hostname?: string
	// The amount of memory, in gigabytes (GB), that allocated on the DB node.
	MemorySizeInGBs?: int
	// The OCID of the DB node.
	Ocid?: string
	// The current status of the DB node.
	Status?: string
	Tags?: [...#Tag]
	// The OCID of the second VNIC.
	Vnic2Id?: string
	// The OCID of the VNIC.
	VnicId?: string
}

#IamRole: {
	// The AWS integration configuration settings for the AWS Identity and Access Management (IAM) service role.
	AwsIntegration?: string
	// The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) service role.
	IamRoleArn?: string
	// The current status of the AWS Identity and Access Management (IAM) service role.
	Status?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that's 1 to 128 Unicode characters in length and can't be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., :, /, =, +, @, -, and ".
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that's 1 to 256 characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
