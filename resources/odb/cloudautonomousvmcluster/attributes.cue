package cloudautonomousvmcluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The unique identifier of the Autonomous VM cluster.
	CloudAutonomousVmClusterId: string
	// The Amazon Resource Name (ARN) for the Autonomous VM cluster.
	CloudAutonomousVmClusterArn: string
	// The name of the OCI resource anchor associated with this Autonomous VM cluster.
	OciResourceAnchorName: string
	// The percentage of data storage currently in use for Autonomous Databases in the Autonomous VM cluster.
	AutonomousDataStoragePercentage: number
	// The available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
	AvailableAutonomousDataStorageSizeInTBs: number
	// The number of Autonomous CDBs that you can create with the currently available storage.
	AvailableContainerDatabases: int
	// The number of CPU cores available for allocation to Autonomous Databases.
	AvailableCpus: number
	// The compute model of the Autonomous VM cluster: ECPU or OCPU.
	ComputeModel: "ECPU" | "OCPU"
	// The total number of CPU cores in the Autonomous VM cluster.
	CpuCoreCount: int
	// The percentage of total CPU cores currently in use in the Autonomous VM cluster.
	CpuPercentage: number
	// The total data storage allocated to the Autonomous VM cluster, in GB.
	DataStorageSizeInGBs: number
	// The total data storage allocated to the Autonomous VM cluster, in TB.
	DataStorageSizeInTBs: number
	// The local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
	DbNodeStorageSizeInGBs: int
	// The domain name for the Autonomous VM cluster.
	Domain: string
	// The minimum value to which you can scale down the Exadata storage, in TB.
	ExadataStorageInTBsLowestScaledValue: number
	// The hostname for the Autonomous VM cluster.
	Hostname: string
	// The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
	Ocid: string
	// The URL for accessing the OCI console page for this Autonomous VM cluster.
	OciUrl: string
	// The minimum value to which you can scale down the maximum number of Autonomous CDBs.
	MaxAcdsLowestScaledValue: int
	// The total amount of memory allocated to the Autonomous VM cluster, in gigabytes (GB).
	MemorySizeInGBs: int
	// The number of database server nodes in the Autonomous VM cluster.
	NodeCount: int
	// The number of Autonomous CDBs that can't be provisioned because of resource constraints.
	NonProvisionableAutonomousContainerDatabases: int
	// The number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
	ProvisionableAutonomousContainerDatabases: int
	// The number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
	ProvisionedAutonomousContainerDatabases: int
	// The number of CPU cores currently provisioned in the Autonomous VM cluster.
	ProvisionedCpus: number
	// The number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
	ReclaimableCpus: number
	// The number of CPU cores reserved for system operations and redundancy.
	ReservedCpus: number
	// The shape of the Exadata infrastructure for the Autonomous VM cluster.
	Shape: string
	// The AWS Identity and Access Management (IAM) service roles associated with the Autonomous VM cluster.
	IamRoles: [...#IamRole]
}
