package cloudexadatainfrastructure

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The number of storage servers requested for the Exadata infrastructure.
	ActivatedStorageCount: int
	// The number of storage servers requested for the Exadata infrastructure.
	AdditionalStorageCount: int
	// The amount of available storage, in gigabytes (GB), for the Exadata infrastructure.
	AvailableStorageSizeInGBs: int
	// The Amazon Resource Name (ARN) for the Exadata infrastructure.
	CloudExadataInfrastructureArn: string
	// The unique identifier for the Exadata infrastructure.
	CloudExadataInfrastructureId: string
	// The OCI model compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
	ComputeModel: string
	// The total number of CPU cores that are allocated to the Exadata infrastructure.
	CpuCount: int
	// The size of the Exadata infrastructure's data disk group, in terabytes (TB).
	DataStorageSizeInTBs: number
	// The size of the Exadata infrastructure's local node storage, in gigabytes (GB).
	DbNodeStorageSizeInGBs: int
	// The software version of the database servers (dom0) in the Exadata infrastructure.
	DbServerVersion: string
	// The total number of CPU cores available on the Exadata infrastructure.
	MaxCpuCount: int
	// The total amount of data disk group storage, in terabytes (TB), that's available on the Exadata infrastructure.
	MaxDataStorageInTBs: number
	// The total amount of local node storage, in gigabytes (GB), that's available on the Exadata infrastructure.
	MaxDbNodeStorageSizeInGBs: int
	// The total amount of memory, in gigabytes (GB), that's available on the Exadata infrastructure.
	MaxMemoryInGBs: int
	// The amount of memory, in gigabytes (GB), that's allocated on the Exadata infrastructure.
	MemorySizeInGBs: int
	// The name of the OCI resource anchor for the Exadata infrastructure.
	OciResourceAnchorName: string
	// The HTTPS link to the Exadata infrastructure in OCI.
	OciUrl: string
	// The OCID of the Exadata infrastructure.
	Ocid: string
	// The software version of the storage servers on the Exadata infrastructure.
	StorageServerVersion: string
	// The total amount of storage, in gigabytes (GB), on the the Exadata infrastructure.
	TotalStorageSizeInGBs: int
	// The list of database server identifiers for the Exadata infrastructure.
	DbServerIds: [...string]
}
