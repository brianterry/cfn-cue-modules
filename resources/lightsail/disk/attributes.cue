package disk

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// Name of the attached Lightsail Instance
	AttachedTo: string
	// Path of the  attached Disk
	Path: string
	// Check is Disk is attached state
	IsAttached: bool
	// Iops of the Lightsail disk
	Iops: int
	// Attachment State of the Lightsail disk
	AttachmentState: string
	// State of the Lightsail disk
	State: string
	// Resource type of Lightsail instance.
	ResourceType: string
	Location: #Location
	// Support code to help identify any issues
	SupportCode: string
	DiskArn: string
}
