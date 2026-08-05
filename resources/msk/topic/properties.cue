package topic

#Properties: {
	// The Amazon Resource Name (ARN) of the MSK cluster
	ClusterArn: string
	// Base64 encoded configuration properties of the topic
	Configs?: string
	// The number of partitions for the topic
	PartitionCount: int & >=1
	// The replication factor for the topic
	ReplicationFactor: int & >=1
	// The name of the topic
	TopicName: string
}
