package replicationinstance

#Properties: {
	AllocatedStorage?: int
	AllowMajorVersionUpgrade?: bool
	AutoMinorVersionUpgrade?: bool
	AvailabilityZone?: string
	DnsNameServers?: string
	EngineVersion?: string
	KmsKeyId?: string
	MultiAZ?: bool
	NetworkType?: string
	PreferredMaintenanceWindow?: string
	PubliclyAccessible?: bool
	ReplicationInstanceClass: string
	ReplicationInstanceIdentifier?: string
	ReplicationSubnetGroupIdentifier?: string
	ResourceIdentifier?: string
	Tags?: [...#Tag]
	VpcSecurityGroupIds?: [...string]
}

#Tag: {
	Key: string
	Value: string
}
