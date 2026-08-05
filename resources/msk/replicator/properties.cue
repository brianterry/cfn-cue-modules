package replicator

import "strings"

#Properties: {
	// A summary description of the replicator.
	Description?: string & strings.MaxRunes(1024)
	// Specifies a list of Kafka clusters which are targets of the replicator.
	KafkaClusters: [...#KafkaCluster]
	// Configuration for log delivery for the replicator.
	LogDelivery?: #LogDelivery
	// A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
	ReplicationInfoList: [...#ReplicationInfo]
	// The name of the replicator.
	ReplicatorName: string & =~"^[0-9A-Za-z][0-9A-Za-z-]{0,}$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Amazon Resource Name (ARN) of the IAM role used by the replicator to access external resources.
	ServiceExecutionRoleArn: string & =~"arn:(aws|aws-us-gov|aws-cn):iam:.*"
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
}

#AmazonMskCluster: {
	// The ARN of an Amazon MSK cluster.
	MskClusterArn: string & =~"arn:(aws|aws-us-gov|aws-cn):kafka:.*"
}

#ApacheKafkaCluster: {
	// The ID of the Apache Kafka cluster.
	ApacheKafkaClusterId: string
	// The bootstrap broker string of the Apache Kafka cluster.
	BootstrapBrokerString: string
}

#CloudWatchLogs: {
	// Whether log delivery to CloudWatch Logs is enabled.
	Enabled: bool
	// The CloudWatch log group that is the destination for log delivery.
	LogGroup?: string
}

#ConsumerGroupOffsetSyncMode: "LEGACY" | "ENHANCED"

#ConsumerGroupReplication: {
	// The consumer group offset synchronization mode.
	ConsumerGroupOffsetSyncMode?: #ConsumerGroupOffsetSyncMode
	// List of regular expression patterns indicating the consumer groups that should not be replicated.
	ConsumerGroupsToExclude?: [...string & strings.MaxRunes(256)]
	// List of regular expression patterns indicating the consumer groups to copy.
	ConsumerGroupsToReplicate: [...string & strings.MaxRunes(256)]
	// Whether to periodically check for new consumer groups.
	DetectAndCopyNewConsumerGroups?: bool
	// Whether to periodically write the translated offsets to __consumer_offsets topic in target cluster.
	SynchroniseConsumerGroupOffsets?: bool
}

#Firehose: {
	// The Firehose delivery stream that is the destination for log delivery.
	DeliveryStream?: string
	// Whether log delivery to Firehose is enabled.
	Enabled: bool
}

#KafkaCluster: {
	// Details of an Amazon MSK cluster.
	AmazonMskCluster?: #AmazonMskCluster
	// Details of an Apache Kafka cluster.
	ApacheKafkaCluster?: #ApacheKafkaCluster
	// Details of the client authentication used by the Apache Kafka cluster.
	ClientAuthentication?: #KafkaClusterClientAuthentication
	// Details of encryption in transit to the Apache Kafka cluster.
	EncryptionInTransit?: #KafkaClusterEncryptionInTransit
	// Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.
	VpcConfig?: #KafkaClusterClientVpcConfig
}

#KafkaClusterClientAuthentication: {
	// Details for mTLS client authentication.
	MTLS?: #KafkaClusterMtlsAuthentication
	// Details for SASL/SCRAM client authentication.
	SaslScram?: #KafkaClusterSaslScramAuthentication
}

#KafkaClusterClientVpcConfig: {
	// The AWS security groups to associate with the elastic network interfaces in order to specify what the replicator has access to. If a security group is not specified, the default security group associated with the VPC is used.
	SecurityGroupIds?: [...string]
	// The list of subnets to connect to in the virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets.
	SubnetIds: [...string]
}

#KafkaClusterEncryptionInTransit: {
	// The type of encryption in transit to the Apache Kafka cluster.
	EncryptionType: #KafkaClusterEncryptionInTransitType
	// The root CA certificate.
	RootCaCertificate?: string
}

#KafkaClusterEncryptionInTransitType: "TLS"

#KafkaClusterMtlsAuthentication: {
	// The Amazon Resource Name (ARN) of the Secrets Manager secret.
	SecretArn: string
}

#KafkaClusterSaslScramAuthentication: {
	// The SASL/SCRAM authentication mechanism.
	Mechanism: #KafkaClusterSaslScramMechanism
	// The Amazon Resource Name (ARN) of the Secrets Manager secret.
	SecretArn: string
}

#KafkaClusterSaslScramMechanism: "SHA256" | "SHA512"

#LogDelivery: {
	// The replicator logs configuration.
	ReplicatorLogDelivery?: #ReplicatorLogDelivery
}

#ReplicationInfo: {
	// Configuration relating to consumer group replication.
	ConsumerGroupReplication: #ConsumerGroupReplication
	// Amazon Resource Name of the source Kafka cluster.
	SourceKafkaClusterArn?: string & =~"arn:(aws|aws-us-gov|aws-cn):kafka:.*"
	// The ID of the source Kafka cluster.
	SourceKafkaClusterId?: string
	// The type of compression to use writing records to target Kafka cluster.
	TargetCompressionType: "NONE" | "GZIP" | "SNAPPY" | "LZ4" | "ZSTD"
	// Amazon Resource Name of the target Kafka cluster.
	TargetKafkaClusterArn?: string & =~"arn:(aws|aws-us-gov|aws-cn):kafka:.*"
	// The ID of the target Kafka cluster.
	TargetKafkaClusterId?: string
	// Configuration relating to topic replication.
	TopicReplication: #TopicReplication
}

#ReplicationStartingPosition: {
	Type?: #ReplicationStartingPositionType
}

#ReplicationStartingPositionType: "LATEST" | "EARLIEST"

#ReplicationTopicNameConfiguration: {
	Type?: #ReplicationTopicNameConfigurationType
}

#ReplicationTopicNameConfigurationType: "PREFIXED_WITH_SOURCE_CLUSTER_ALIAS" | "IDENTICAL"

#ReplicatorLogDelivery: {
	// Details of the CloudWatch Logs destination for replicator logs.
	CloudWatchLogs?: #CloudWatchLogs
	// Details of the Kinesis Data Firehose delivery stream that is the destination for replicator logs.
	Firehose?: #Firehose
	// Details of the Amazon S3 destination for replicator logs.
	S3?: #S3
}

#S3: {
	// The S3 bucket that is the destination for log delivery.
	Bucket?: string
	// Whether log delivery to S3 is enabled.
	Enabled: bool
	// The S3 prefix that is the destination for log delivery.
	Prefix?: string
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MaxRunes(256)
}

#TopicReplication: {
	// Whether to periodically configure remote topic ACLs to match their corresponding upstream topics.
	CopyAccessControlListsForTopics?: bool
	// Whether to periodically configure remote topics to match their corresponding upstream topics.
	CopyTopicConfigurations?: bool
	// Whether to periodically check for new topics and partitions.
	DetectAndCopyNewTopics?: bool
	// Configuration for specifying the position in the topics to start replicating from.
	StartingPosition?: #ReplicationStartingPosition
	// Configuration for specifying replicated topic names should be the same as their corresponding upstream topics or prefixed with source cluster alias.
	TopicNameConfiguration?: #ReplicationTopicNameConfiguration
	// List of regular expression patterns indicating the topics that should not be replicated.
	TopicsToExclude?: [...string & strings.MaxRunes(249)]
	// List of regular expression patterns indicating the topics to copy.
	TopicsToReplicate: [...string & strings.MaxRunes(249)]
}
