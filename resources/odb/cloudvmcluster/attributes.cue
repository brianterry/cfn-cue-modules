package cloudvmcluster

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the VM cluster.
	CloudVmClusterArn: string
	// The unique identifier of the VM cluster.
	CloudVmClusterId: string
	// The OCI model compute model used when you create or clone an instance: ECPU or OCPU. An ECPU is an abstracted measure of compute resources. ECPUs are based on the number of cores elastically allocated from a pool of compute and storage servers. An OCPU is a legacy physical measure of compute resources. OCPUs are based on the physical core of a processor with hyper-threading enabled.
	ComputeModel: string
	// The type of redundancy configured for the VM cluster. NORMAL is 2-way redundancy. HIGH is 3-way redundancy.
	DiskRedundancy: string
	// The domain of the VM cluster.
	Domain: string
	// The port number configured for the listener on the VM cluster.
	ListenerPort: int
	// The number of nodes in the VM cluster.
	NodeCount: int
	// The OCID of the VM cluster.
	Ocid: string
	// The name of the OCI resource anchor for the VM cluster.
	OciResourceAnchorName: string
	// The HTTPS link to the VM cluster in OCI.
	OciUrl: string
	// The FQDN of the DNS record for the Single Client Access Name (SCAN) IP addresses that are associated with the VM cluster.
	ScanDnsName: string
	// The OCID of the SCAN IP addresses that are associated with the VM cluster.
	ScanIpIds: [...string]
	// The hardware model name of the Exadata infrastructure that's running the VM cluster.
	Shape: string
	// The amount of local node storage, in gigabytes (GB), that's allocated to the VM cluster.
	StorageSizeInGBs: int
	// The virtual IP (VIP) addresses that are associated with the VM cluster. Oracle's Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the VM cluster to enable failover. If one node fails, the VIP is reassigned to another active node in the cluster.
	VipIds: [...string]
	// The DB nodes that are implicitly created and managed as part of this VM Cluster.
	DbNodes: [...#DbNode]
	// The AWS Identity and Access Management (IAM) service roles associated with the VM cluster.
	IamRoles: [...#IamRole]
}
