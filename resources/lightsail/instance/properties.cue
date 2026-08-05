package instance

import "strings"

#Properties: {
	// An array of objects representing the add-ons to enable for the new instance.
	AddOns?: [...#AddOn]
	// The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
	AvailabilityZone?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The ID for a virtual private server image (e.g., app_wordpress_4_4 or app_lamp_7_0 ). Use the get blueprints operation to return a list of available images (or blueprints ).
	BlueprintId: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The bundle of specification information for your virtual private server (or instance ), including the pricing plan (e.g., micro_1_0 ).
	BundleId: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The names to use for your new Lightsail instance.
	InstanceName: string & =~"^[a-zA-Z0-9][\\w\\-.]*[a-zA-Z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(254)
	// The name of your key pair.
	KeyPairName?: string
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
	// A launch script you can create that configures a server with additional user data. For example, you might want to run apt-get -y update.
	UserData?: string
}

#AddOn: {
	// The add-on type
	AddOnType: string & strings.MinRunes(1) & strings.MaxRunes(128)
	AutoSnapshotAddOnRequest?: #AutoSnapshotAddOn
	// Status of the Addon
	Status?: "Enabling" | "Disabling" | "Enabled" | "Terminating" | "Terminated" | "Disabled" | "Failed"
}

#AutoSnapshotAddOn: {
	// The daily time when an automatic snapshot will be created.
	SnapshotTimeOfDay?: string & =~"^[0-9]{2}:00$"
}

#Disk: {
	// Instance attached to the disk.
	AttachedTo?: string
	// Attachment state of the disk.
	AttachmentState?: string
	// The names to use for your new Lightsail disk.
	DiskName: string & =~"^[a-zA-Z0-9][\\w\\-.]*[a-zA-Z0-9]$" & strings.MinRunes(1) & strings.MaxRunes(254)
	// IOPS of disk.
	IOPS?: int
	// Is the Attached disk is the system disk of the Instance.
	IsSystemDisk?: bool
	// Path of the disk attached to the instance.
	Path: string
	// Size of the disk attached to the Instance.
	SizeInGb?: string
}

#Hardware: {
	// CPU count of the Instance.
	CpuCount?: int
	// Disks attached to the Instance.
	Disks?: [...#Disk]
	// RAM Size of the Instance.
	RamSizeInGb?: int
}

#Location: {
	// The Availability Zone in which to create your instance. Use the following format: us-east-2a (case sensitive). Be sure to add the include Availability Zones parameter to your request.
	AvailabilityZone?: string
	// The Region Name in which to create your instance.
	RegionName?: string
}

#MonthlyTransfer: {
	// GbPerMonthAllocated of the Instance.
	GbPerMonthAllocated?: string
}

#Networking: {
	MonthlyTransfer?: #MonthlyTransfer
	// Ports to the Instance.
	Ports: [...#Port]
}

#Port: {
	// Access Direction for Protocol of the Instance(inbound/outbound).
	AccessDirection?: string
	// Access From Protocol of the Instance.
	AccessFrom?: string
	// Access Type Protocol of the Instance.
	AccessType?: string
	CidrListAliases?: #cidrListAliases
	Cidrs?: #cidrs
	// CommonName for Protocol of the Instance.
	CommonName?: string
	// From Port of the Instance.
	FromPort?: int
	Ipv6Cidrs?: #ipv6Cidrs
	// Port Protocol of the Instance.
	Protocol?: string
	// To Port of the Instance.
	ToPort?: int
}

#State: {
	// Status code of the Instance.
	Code?: int
	// Status code of the Instance.
	Name?: string
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
