package disksnapshot

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the disk snapshot.
	DiskSnapshotArn: string & =~".*\\S.*"
	// The AWS Region and Availability Zone where the disk snapshot was created.
	Location: {
	AvailabilityZone?: string
	RegionName?: string
}
	// The Lightsail resource type (DiskSnapshot).
	ResourceType: "DiskSnapshot"
	// The status of the disk snapshot operation.
	State: "pending" | "completed" | "error" | "unknown"
	// The progress of the disk snapshot creation operation.
	Progress: string
	// The name of the source disk from which the disk snapshot was created.
	FromDiskName: string & =~"^\\w[\\w\\-]*\\w$"
	// The size of the disk snapshot in GB.
	SizeInGb: int & >=1
	// A Boolean value indicating whether the snapshot was created from an automatic snapshot.
	IsFromAutoSnapshot: bool
	// The timestamp when the disk snapshot was created.
	CreatedAt: string
	// The support code. Include this code in your email to support when you have questions about an instance or another resource in Lightsail.
	SupportCode: string
}
