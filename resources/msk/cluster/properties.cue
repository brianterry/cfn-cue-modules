package cluster

import "strings"

#Properties: {
	BrokerNodeGroupInfo: #BrokerNodeGroupInfo
	ClientAuthentication?: #ClientAuthentication
	ClusterName: string & strings.MinRunes(1) & strings.MaxRunes(64)
	ConfigurationInfo?: #ConfigurationInfo
	EncryptionInfo?: #EncryptionInfo
	EnhancedMonitoring?: "DEFAULT" | "PER_BROKER" | "PER_TOPIC_PER_BROKER" | "PER_TOPIC_PER_PARTITION"
	KafkaVersion: string & strings.MinRunes(1) & strings.MaxRunes(128)
	LoggingInfo?: #LoggingInfo
	NumberOfBrokerNodes: int
	OpenMonitoring?: #OpenMonitoring
	Rebalancing?: #Rebalancing
	StorageMode?: "LOCAL" | "TIERED"
	// A key-value pair to associate with a resource.
	Tags?: {...}
	ZookeeperAccess?: #ZookeeperAccess
}

#BrokerLogs: {
	CloudWatchLogs?: #CloudWatchLogs
	Firehose?: #Firehose
	S3?: #S3
}

#BrokerNodeGroupInfo: {
	BrokerAZDistribution?: string & strings.MinRunes(6) & strings.MaxRunes(9)
	ClientSubnets: [...string]
	ConnectivityInfo?: #ConnectivityInfo
	InstanceType: string & strings.MinRunes(5) & strings.MaxRunes(32)
	SecurityGroups?: [...string]
	StorageInfo?: #StorageInfo
}

#ClientAuthentication: {
	Sasl?: #Sasl
	Tls?: #Tls
	Unauthenticated?: #Unauthenticated
}

#CloudWatchLogs: {
	Enabled: bool
	LogGroup?: string
}

#ConfigurationInfo: {
	Arn: string
	Revision: int
}

#ConnectivityInfo: {
	NetworkType?: #NetworkType
	PublicAccess?: #PublicAccess
	VpcConnectivity?: #VpcConnectivity
}

#EBSStorageInfo: {
	ProvisionedThroughput?: #ProvisionedThroughput
	VolumeSize?: int & >=1 & <=16384
}

#EncryptionAtRest: {
	DataVolumeKMSKeyId: string
}

#EncryptionInTransit: {
	ClientBroker?: "TLS" | "TLS_PLAINTEXT" | "PLAINTEXT"
	InCluster?: bool
}

#EncryptionInfo: {
	EncryptionAtRest?: #EncryptionAtRest
	EncryptionInTransit?: #EncryptionInTransit
}

#Firehose: {
	DeliveryStream?: string
	Enabled: bool
}

#Iam: {
	Enabled: bool
}

#JmxExporter: {
	EnabledInBroker: bool
}

#LoggingInfo: {
	BrokerLogs: #BrokerLogs
}

#NetworkType: "IPV4" | "DUAL"

#NodeExporter: {
	EnabledInBroker: bool
}

#OpenMonitoring: {
	Prometheus: #Prometheus
}

#Prometheus: {
	JmxExporter?: #JmxExporter
	NodeExporter?: #NodeExporter
}

#ProvisionedThroughput: {
	Enabled?: bool
	VolumeThroughput?: int
}

#PublicAccess: {
	Type?: string & strings.MinRunes(7) & strings.MaxRunes(23)
}

#Rebalancing: {
	Status: "PAUSED" | "ACTIVE"
}

#S3: {
	Bucket?: string
	Enabled: bool
	Prefix?: string
}

#Sasl: {
	Iam?: #Iam
	Scram?: #Scram
}

#Scram: {
	Enabled: bool
}

#StorageInfo: {
	EBSStorageInfo?: #EBSStorageInfo
}

#Tls: {
	CertificateAuthorityArnList?: [...string]
	Enabled?: bool
}

#Unauthenticated: {
	Enabled: bool
}

#VpcConnectivity: {
	ClientAuthentication?: #VpcConnectivityClientAuthentication
}

#VpcConnectivityClientAuthentication: {
	Sasl?: #VpcConnectivitySasl
	Tls?: #VpcConnectivityTls
}

#VpcConnectivityIam: {
	Enabled: bool
}

#VpcConnectivitySasl: {
	Iam?: #VpcConnectivityIam
	Scram?: #VpcConnectivityScram
}

#VpcConnectivityScram: {
	Enabled: bool
}

#VpcConnectivityTls: {
	Enabled: bool
}

#ZookeeperAccess: {
	Enabled?: bool
}
