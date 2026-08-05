package environment

import "strings"

#Properties: {
	// The description of the environment.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	EngineType: #EngineType
	// The version of the runtime engine for the environment.
	EngineVersion?: string & =~"^\\S{1,10}$"
	HighAvailabilityConfig?: #HighAvailabilityConfig
	// The type of instance underlying the environment.
	InstanceType: string & =~"^\\S{1,20}$"
	// The ID or the Amazon Resource Name (ARN) of the customer managed KMS Key used for encrypting environment-related resources.
	KmsKeyId?: string & strings.MaxRunes(2048)
	// The name of the environment.
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9_\\-]{1,59}$"
	NetworkType?: #NetworkType
	// Configures a desired maintenance window for the environment. If you do not provide a value, a random system-generated value will be assigned.
	PreferredMaintenanceWindow?: string & =~"^\\S{1,50}$"
	// Specifies whether the environment is publicly accessible.
	PubliclyAccessible?: bool
	// The list of security groups for the VPC associated with this environment.
	SecurityGroupIds?: [...string & =~"^\\S{1,50}$"]
	// The storage configurations defined for the runtime environment.
	StorageConfigurations?: [...#StorageConfiguration]
	// The unique identifiers of the subnets assigned to this runtime environment.
	SubnetIds?: [...string & =~"^\\S{1,50}$"]
	// Tags associated to this environment.
	Tags?: #TagMap
}

#EfsStorageConfiguration: {
	// The file system identifier.
	FileSystemId: string & =~"^\\S{1,200}$"
	// The mount point for the file system.
	MountPoint: string & =~"^\\S{1,200}$"
}

#FsxStorageConfiguration: {
	// The file system identifier.
	FileSystemId: string & =~"^\\S{1,200}$"
	// The mount point for the file system.
	MountPoint: string & =~"^\\S{1,200}$"
}

#HighAvailabilityConfig: {
	DesiredCapacity: int & >=1 & <=100
}
