package cachecluster

#Properties: {
	// Specifies whether the nodes in this Memcached cluster are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region.
	AZMode?: string
	// If you are running Redis engine version 6.0 or later, set this parameter to yes if you want to opt-in to the next minor version upgrade campaign.
	AutoMinorVersionUpgrade?: bool
	// The compute and memory capacity of the nodes in the node group (shard).
	CacheNodeType: string
	// The name of the parameter group to associate with this cluster.
	CacheParameterGroupName?: string
	// A list of security group names to associate with this cluster.
	CacheSecurityGroupNames?: [...string]
	// The name of the subnet group to be used for the cluster.
	CacheSubnetGroupName?: string
	// A name for the cache cluster.
	ClusterName?: string
	// The name of the cache engine to be used for this cluster.
	Engine: string
	// The version number of the cache engine to be used for this cluster
	EngineVersion?: string
	// The Ip Discovery parameter for cachecluster.
	IpDiscovery?: string
	// Specifies the destination, format and type of the logs
	LogDeliveryConfigurations?: [...#LogDeliveryConfigurationRequest]
	// The network type parameter for cachecluster.
	NetworkType?: string
	// The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.
	NotificationTopicArn?: string
	// The number of cache nodes that the cache cluster should have.
	NumCacheNodes: int
	// The port number on which each of the cache nodes accepts connections.
	Port?: int
	// The EC2 Availability Zone in which the cluster is created.
	PreferredAvailabilityZone?: string
	// A list of the Availability Zones in which cache nodes are created. The order of the zones in the list is not important.
	PreferredAvailabilityZones?: [...string]
	// Specifies the weekly time range during which maintenance on the cluster is performed.
	PreferredMaintenanceWindow?: string
	// A single-element string list containing an Amazon Resource Name (ARN) that uniquely identifies a Redis RDB snapshot file stored in Amazon S3.
	SnapshotArns?: [...string]
	// The name of a Redis snapshot from which to restore data into the new node group (shard).
	SnapshotName?: string
	// The number of days for which ElastiCache retains automatic snapshots before deleting them.
	SnapshotRetentionLimit?: int
	// The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).
	SnapshotWindow?: string
	// A list of tags to be added to this resource.
	Tags?: [...#Tag]
	// A flag that enables in-transit encryption when set to true. You cannot modify the value of TransitEncryptionEnabled after the cluster is created
	TransitEncryptionEnabled?: bool
	// One or more VPC security groups associated with the cluster.
	VpcSecurityGroupIds?: [...string]
}

#CloudWatchLogsDestinationDetails: {
	// The name of the CloudWatch Logs log group.
	LogGroup: string
}

#DestinationDetails: {
	// The configuration details of the CloudWatch Logs destination
	CloudWatchLogsDetails?: #CloudWatchLogsDestinationDetails
	// The configuration details of the Kinesis Data Firehose destination.
	KinesisFirehoseDetails?: #KinesisFirehoseDestinationDetails
}

#Endpoint: {
	Address?: string
	Port?: string
}

#KinesisFirehoseDestinationDetails: {
	// The name of the Kinesis Data Firehose delivery stream
	DeliveryStream: string
}

#LogDeliveryConfigurationRequest: {
	// Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose destination.
	DestinationDetails: #DestinationDetails
	// Specify either CloudWatch Logs or Kinesis Data Firehose as the destination type. 
	DestinationType: string
	// Valid values are either json or text
	LogFormat: string
	// Valid value is either slow-log, which refers to slow-log or engine-log
	LogType: string
}

#Tag: {
	Key: string
	Value: string
}
