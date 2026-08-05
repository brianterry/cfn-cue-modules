package connector

import "strings"

#Properties: {
	Capacity: #Capacity
	// The configuration for the connector.
	ConnectorConfiguration: {...}
	// A summary description of the connector.
	ConnectorDescription?: string & strings.MaxRunes(1024)
	// The name of the connector.
	ConnectorName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	KafkaCluster: #KafkaCluster
	KafkaClusterClientAuthentication: #KafkaClusterClientAuthentication
	KafkaClusterEncryptionInTransit: #KafkaClusterEncryptionInTransit
	// The version of Kafka Connect. It has to be compatible with both the Kafka cluster's version and the plugins.
	KafkaConnectVersion: string
	LogDelivery?: #LogDelivery
	// The network type of the Connector.
	NetworkType?: "IPV4" | "DUAL"
	// List of plugins to use with the connector.
	Plugins: [...#Plugin]
	// The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon S3 objects and other external resources.
	ServiceExecutionRoleArn: string & =~"arn:(aws|aws-us-gov|aws-cn):iam:.*"
	// A collection of tags associated with a resource
	Tags?: [...#Tag]
	WorkerConfiguration?: #WorkerConfiguration
}

#ApacheKafkaCluster: {
	// The bootstrap servers string of the Apache Kafka cluster.
	BootstrapServers: string
	Vpc: #Vpc
}

#AutoScaling: {
	// The maximum number of tasks allocated to the connector during autoscaling operations.
	MaxAutoscalingTaskCount?: int
	// The maximum number of workers for a connector.
	MaxWorkerCount: int
	// Specifies how many MSK Connect Units (MCU) as the minimum scaling unit.
	McuCount: int
	// The minimum number of workers for a connector.
	MinWorkerCount: int
	ScaleInPolicy: #ScaleInPolicy
	ScaleOutPolicy: #ScaleOutPolicy
}

#Capacity: {
	AutoScaling?: #AutoScaling
	ProvisionedCapacity?: #ProvisionedCapacity
}

#CloudWatchLogsLogDelivery: {
	// Specifies whether the logs get sent to the specified CloudWatch Logs destination.
	Enabled: bool
	// The CloudWatch log group that is the destination for log delivery.
	LogGroup?: string
}

#CustomPlugin: {
	// The Amazon Resource Name (ARN) of the custom plugin to use.
	CustomPluginArn: string & =~"arn:(aws|aws-us-gov|aws-cn):kafkaconnect:.*"
	// The revision of the custom plugin to use.
	Revision: int & >=1
}

#FirehoseLogDelivery: {
	// The Kinesis Data Firehose delivery stream that is the destination for log delivery.
	DeliveryStream?: string
	// Specifies whether the logs get sent to the specified Kinesis Data Firehose delivery stream.
	Enabled: bool
}

#KafkaCluster: {
	ApacheKafkaCluster: #ApacheKafkaCluster
}

#KafkaClusterClientAuthentication: {
	AuthenticationType: #KafkaClusterClientAuthenticationType
}

#KafkaClusterClientAuthenticationType: "NONE" | "IAM"

#KafkaClusterEncryptionInTransit: {
	EncryptionType: #KafkaClusterEncryptionInTransitType
}

#KafkaClusterEncryptionInTransitType: "PLAINTEXT" | "TLS"

#LogDelivery: {
	WorkerLogDelivery: #WorkerLogDelivery
}

#Plugin: {
	CustomPlugin: #CustomPlugin
}

#ProvisionedCapacity: {
	// Specifies how many MSK Connect Units (MCU) are allocated to the connector.
	McuCount: int
	// Number of workers for a connector.
	WorkerCount: int
}

#S3LogDelivery: {
	// The name of the S3 bucket that is the destination for log delivery.
	Bucket?: string
	// Specifies whether the logs get sent to the specified Amazon S3 destination.
	Enabled: bool
	// The S3 prefix that is the destination for log delivery.
	Prefix?: string
}

#ScaleInPolicy: {
	// Specifies the CPU utilization percentage threshold at which connector scale in should trigger.
	CpuUtilizationPercentage: int & >=1 & <=100
}

#ScaleOutPolicy: {
	// Specifies the CPU utilization percentage threshold at which connector scale out should trigger.
	CpuUtilizationPercentage: int & >=1 & <=100
}

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MaxRunes(256)
}

#Vpc: {
	// The AWS security groups to associate with the elastic network interfaces in order to specify what the connector has access to.
	SecurityGroups: [...string]
	// The list of subnets to connect to in the virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets.
	Subnets: [...string]
}

#WorkerConfiguration: {
	// The revision of the worker configuration to use.
	Revision: int & >=1
	// The Amazon Resource Name (ARN) of the worker configuration to use.
	WorkerConfigurationArn: string & =~"arn:(aws|aws-us-gov|aws-cn):kafkaconnect:.*"
}

#WorkerLogDelivery: {
	CloudWatchLogs?: #CloudWatchLogsLogDelivery
	Firehose?: #FirehoseLogDelivery
	S3?: #S3LogDelivery
}
