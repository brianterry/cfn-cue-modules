package cluster

#Properties: {
	AvailabilityZones?: [...string]
	ClusterEndpointEncryptionType?: string
	ClusterName?: string
	Description?: string
	IAMRoleARN: string
	NetworkType?: string
	NodeType: string
	NotificationTopicARN?: string
	ParameterGroupName?: string
	PreferredMaintenanceWindow?: string
	ReplicationFactor: int
	SSESpecification?: #SSESpecification
	SecurityGroupIds?: [...string]
	SubnetGroupName?: string
	Tags?: {...}
}

#SSESpecification: {
	SSEEnabled?: bool
}
