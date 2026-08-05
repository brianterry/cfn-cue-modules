package wirelessdeviceimporttask

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Id for Wireless Device Import Task, Returned upon successful start.
	Id: string & strings.MaxRunes(256)
	// Arn for Wireless Device Import Task, Returned upon successful start.
	Arn: string & strings.MaxRunes(128)
	// CreationDate for import task
	CreationDate: string
	// Status for import task
	Status: "INITIALIZING" | "INITIALIZED" | "PENDING" | "COMPLETE" | "FAILED" | "DELETING"
	// StatusReason for import task
	StatusReason: string
	// Initialized Imported Devices Count
	InitializedImportedDevicesCount: int
	// Pending Imported Devices Count
	PendingImportedDevicesCount: int
	// Onboarded Imported Devices Count
	OnboardedImportedDevicesCount: int
	// Failed Imported Devices Count
	FailedImportedDevicesCount: int
	// sidewalk contain file for created device and role
	Sidewalk: {
	DeviceCreationFile?: string & strings.MaxRunes(1024)
	DeviceCreationFileList?: #DeviceCreationFileList
	Role?: #Role
	SidewalkManufacturingSn?: string & strings.MaxRunes(64)
}
}
