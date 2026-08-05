package workgroup

import "strings"

#Properties: {
	// The base compute capacity of the workgroup in Redshift Processing Units (RPUs).
	BaseCapacity?: int
	// A list of parameters to set for finer control over a database. Available options are datestyle, enable_user_activity_logging, query_group, search_path, max_query_execution_time, and require_ssl.
	ConfigParameters?: [...#ConfigParameter]
	// The value that specifies whether to enable enhanced virtual private cloud (VPC) routing, which forces Amazon Redshift Serverless to route traffic through your VPC.
	EnhancedVpcRouting?: bool
	// The max compute capacity of the workgroup in Redshift Processing Units (RPUs).
	MaxCapacity?: int
	// The namespace the workgroup is associated with.
	NamespaceName?: string & =~"^(?=^[a-z0-9-]+$).{3,64}$" & strings.MinRunes(3) & strings.MaxRunes(64)
	// The custom port to use when connecting to a workgroup. Valid port ranges are 5431-5455 and 8191-8215. The default is 5439.
	Port?: int
	// A property that represents the price performance target settings for the workgroup.
	PricePerformanceTarget?: #PerformanceTarget
	// A value that specifies whether the workgroup can be accessible from a public network.
	PubliclyAccessible?: bool
	// The identifier of the recovery point to restore the namespace from. When this resource is first created, the namespace is restored from this recovery point. On subsequent updates, a restore occurs only when RecoveryPointId changes from its previous value. If the value is unchanged or removed, no restore takes place and existing data is preserved.
	RecoveryPointId?: string
	// A list of security group IDs to associate with the workgroup.
	SecurityGroupIds?: [...string & =~"^sg-[0-9a-fA-F]{8,}$" & strings.MinRunes(0) & strings.MaxRunes(255)]
	// The Amazon Resource Name (ARN) of the snapshot to restore the namespace from. Specify either SnapshotArn or SnapshotName, but not both. When this resource is first created, the namespace is restored from this snapshot. On subsequent updates, a restore occurs only when SnapshotArn changes from its previous value. If the value is unchanged or removed, no restore takes place and existing data is preserved.
	SnapshotArn?: string
	// The name of the snapshot to restore the namespace from. Because snapshot names are unique only within an account, also specify SnapshotOwnerAccount when restoring from a snapshot owned by a different account. Specify either SnapshotName or SnapshotArn, but not both. When this resource is first created, the namespace is restored from this snapshot. On subsequent updates, a restore occurs only when SnapshotName or SnapshotOwnerAccount changes from its previous value. If both values are unchanged or SnapshotName is removed, no restore takes place and existing data is preserved.
	SnapshotName?: string
	// The AWS account ID that owns the snapshot. Required when restoring from a snapshot shared by another account. Used in combination with SnapshotName. On updates, changing this value while SnapshotName is set triggers a restore from the newly referenced snapshot. If the value is unchanged, no restore takes place and existing data is preserved.
	SnapshotOwnerAccount?: string
	// A list of subnet IDs the workgroup is associated with.
	SubnetIds?: [...string & =~"^subnet-[0-9a-fA-F]{8,}$" & strings.MinRunes(0) & strings.MaxRunes(255)]
	// The map of the key-value pairs used to tag the workgroup.
	Tags?: [...#Tag]
	TrackName?: string & =~"^[a-zA-Z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the workgroup.
	WorkgroupName: string & =~"^(?=^[a-z0-9-]+$).{3,64}$" & strings.MinRunes(3) & strings.MaxRunes(64)
}

#ConfigParameter: {
	ParameterKey?: string & strings.MinRunes(0) & strings.MaxRunes(255)
	ParameterValue?: string & strings.MinRunes(0) & strings.MaxRunes(15000)
}

#Endpoint: {
	Address?: string
	Port?: int
	VpcEndpoints?: [...#VpcEndpoint]
}

#NetworkInterface: {
	AvailabilityZone?: string
	NetworkInterfaceId?: string
	PrivateIpAddress?: string
	SubnetId?: string
}

#PerformanceTarget: {
	Level?: int & >=1 & <=100
	Status?: #PerformanceTargetStatus
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#VpcEndpoint: {
	NetworkInterfaces?: [...#NetworkInterface]
	VpcEndpointId?: string
	VpcId?: string
}

#Workgroup: {
	BaseCapacity?: int
	ConfigParameters?: [...#ConfigParameter]
	CreationDate?: string
	Endpoint?: #Endpoint
	EnhancedVpcRouting?: bool
	MaxCapacity?: int
	NamespaceName?: string & =~"^[a-z0-9-]+$" & strings.MinRunes(3) & strings.MaxRunes(64)
	PricePerformanceTarget?: #PerformanceTarget
	PubliclyAccessible?: bool
	SecurityGroupIds?: [...string & =~"^sg-[0-9a-fA-F]{8,}$" & strings.MinRunes(0) & strings.MaxRunes(255)]
	Status?: #WorkgroupStatus
	SubnetIds?: [...string & =~"^subnet-[0-9a-fA-F]{8,}$" & strings.MinRunes(0) & strings.MaxRunes(255)]
	TrackName?: string & =~"^[a-zA-Z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	WorkgroupArn?: string
	WorkgroupId?: string
	WorkgroupName?: string & =~"^[a-z0-9-]*$" & strings.MinRunes(3) & strings.MaxRunes(64)
}
