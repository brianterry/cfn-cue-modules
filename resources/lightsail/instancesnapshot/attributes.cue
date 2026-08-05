package instancesnapshot

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The Amazon Resource Name (ARN) of the snapshot.
	Arn: string
	// A Boolean value indicating whether the snapshot was created from an automatic snapshot.
	IsFromAutoSnapshot: bool
	Location: #Location
	// The instance from which the snapshot was created.
	FromInstanceName: string
	// The Amazon Resource Name (ARN) of the instance from which the snapshot was created.
	FromInstanceArn: string
	// The type of resource (usually InstanceSnapshot).
	ResourceType: string
	// The size in GB of the SSD
	SizeInGb: int
	// The state the snapshot is in.
	State: string
	// Support code to help identify any issues
	SupportCode: string
}
