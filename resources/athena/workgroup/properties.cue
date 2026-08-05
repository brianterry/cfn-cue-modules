package workgroup

import "strings"

#Properties: {
	// The workgroup description.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The workGroup name.
	Name: string & =~"[a-zA-Z0-9._-]{1,128}"
	// The option to delete the workgroup and its contents even if the workgroup contains any named queries.
	RecursiveDeleteOption?: bool
	// The state of the workgroup: ENABLED or DISABLED.
	State?: "ENABLED" | "DISABLED"
	// One or more tags, separated by commas, that you want to attach to the workgroup as you create it
	Tags?: #Tags
}

#AclConfiguration: {
	S3AclOption: #S3AclOption
}

#AdditionalConfiguration: string

#BytesScannedCutoffPerQuery: int & >=10000000

#Classification: {
	// The name of the configuration classification.
	Name?: string
	// A set of properties specified within a configuration classification.
	Properties?: {...}
}

#CloudWatchLoggingConfiguration: {
	// Enables CloudWatch logging.
	Enabled?: bool
	// The name of the log group in Amazon CloudWatch Logs where you want to publish your logs.
	LogGroup?: string
	// Prefix for the CloudWatch log stream name.
	LogStreamNamePrefix?: string
	// The types of logs that you want to publish to CloudWatch.
	LogTypes?: {...}
}

#CustomerContentEncryptionConfiguration: {
	KmsKey: #KmsKey
}

#EffectiveEngineVersion: string

#EncryptionConfiguration: {
	EncryptionOption: #EncryptionOption
	KmsKey?: #KmsKey
}

#EncryptionOption: "SSE_S3" | "SSE_KMS" | "CSE_KMS"

#EnforceWorkGroupConfiguration: bool

#EngineConfiguration: {
	// Contains additional notebook engine MAP<string, string> parameter mappings in the form of key-value pairs. To specify an Athena notebook that the Jupyter server will download and serve, specify a value for the StartSessionRequest$NotebookVersion field, and then add a key named NotebookId to AdditionalConfigs that has the value of the Athena notebook ID.
	AdditionalConfigs?: {...}
	// The configuration classifications that can be specified for the engine.
	Classifications?: [...#Classification]
	// The number of DPUs to use for the coordinator. A coordinator is a special executor that orchestrates processing work and manages other executors in a notebook session. The default is 1.
	CoordinatorDpuSize?: int
	// The default number of DPUs to use for executors. An executor is the smallest unit of compute that a notebook session can request from Athena. The default is 1.
	DefaultExecutorDpuSize?: int
	// The maximum number of DPUs that can run concurrently.
	MaxConcurrentDpus?: int
	// Specifies custom jar files and Spark properties for use cases like cluster encryption, table formats, and general Spark tuning.
	SparkProperties?: {...}
}

#EngineVersion: {
	EffectiveEngineVersion?: #EffectiveEngineVersion
	SelectedEngineVersion?: #SelectedEngineVersion
}

#ExecutionRole: string

#ExpectedBucketOwner: string

#KmsKey: string

#ManagedLoggingConfiguration: {
	// Enables managed log persistence.
	Enabled?: bool
	// The KMS key ARN to encrypt the logs stored in managed log persistence.
	KmsKey?: string
}

#ManagedQueryResultsConfiguration: {
	Enabled?: bool
	EncryptionConfiguration?: #ManagedStorageEncryptionConfiguration
}

#ManagedStorageEncryptionConfiguration: {
	KmsKey?: #KmsKey
}

#MonitoringConfiguration: {
	CloudWatchLoggingConfiguration?: #CloudWatchLoggingConfiguration
	ManagedLoggingConfiguration?: #ManagedLoggingConfiguration
	S3LoggingConfiguration?: #S3LoggingConfiguration
}

#OutputLocation: string

#PublishCloudWatchMetricsEnabled: bool

#RemoveAclConfiguration: bool

#RemoveBytesScannedCutoffPerQuery: bool

#RemoveCustomerContentEncryptionConfiguration: bool

#RemoveEncryptionConfiguration: bool

#RemoveExpectedBucketOwner: bool

#RemoveOutputLocation: bool

#RequesterPaysEnabled: bool

#ResultConfiguration: {
	AclConfiguration?: #AclConfiguration
	EncryptionConfiguration?: #EncryptionConfiguration
	ExpectedBucketOwner?: #ExpectedBucketOwner
	OutputLocation?: #OutputLocation
}

#ResultConfigurationUpdates: {
	AclConfiguration?: #AclConfiguration
	EncryptionConfiguration?: #EncryptionConfiguration
	ExpectedBucketOwner?: #ExpectedBucketOwner
	OutputLocation?: #OutputLocation
	RemoveAclConfiguration?: #RemoveAclConfiguration
	RemoveEncryptionConfiguration?: #RemoveEncryptionConfiguration
	RemoveExpectedBucketOwner?: #RemoveExpectedBucketOwner
	RemoveOutputLocation?: #RemoveOutputLocation
}

#S3AclOption: "BUCKET_OWNER_FULL_CONTROL"

#S3LoggingConfiguration: {
	// Enables S3 log delivery.
	Enabled?: bool
	// The KMS key ARN to encrypt the logs published to the given Amazon S3 destination.
	KmsKey?: string
	// The Amazon S3 destination URI for log publishing.
	LogLocation?: string
}

#SelectedEngineVersion: string

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Tags: [...#Tag]

#WorkGroupConfiguration: {
	AdditionalConfiguration?: #AdditionalConfiguration
	BytesScannedCutoffPerQuery?: #BytesScannedCutoffPerQuery
	CustomerContentEncryptionConfiguration?: #CustomerContentEncryptionConfiguration
	EnforceWorkGroupConfiguration?: #EnforceWorkGroupConfiguration
	EngineConfiguration?: #EngineConfiguration
	EngineVersion?: #EngineVersion
	ExecutionRole?: #ExecutionRole
	ManagedQueryResultsConfiguration?: #ManagedQueryResultsConfiguration
	MonitoringConfiguration?: #MonitoringConfiguration
	PublishCloudWatchMetricsEnabled?: #PublishCloudWatchMetricsEnabled
	RequesterPaysEnabled?: #RequesterPaysEnabled
	ResultConfiguration?: #ResultConfiguration
}

#WorkGroupConfigurationUpdates: {
	AdditionalConfiguration?: #AdditionalConfiguration
	BytesScannedCutoffPerQuery?: #BytesScannedCutoffPerQuery
	CustomerContentEncryptionConfiguration?: #CustomerContentEncryptionConfiguration
	EnforceWorkGroupConfiguration?: #EnforceWorkGroupConfiguration
	EngineConfiguration?: #EngineConfiguration
	EngineVersion?: #EngineVersion
	ExecutionRole?: #ExecutionRole
	ManagedQueryResultsConfiguration?: #ManagedQueryResultsConfiguration
	MonitoringConfiguration?: #MonitoringConfiguration
	PublishCloudWatchMetricsEnabled?: #PublishCloudWatchMetricsEnabled
	RemoveBytesScannedCutoffPerQuery?: #RemoveBytesScannedCutoffPerQuery
	RemoveCustomerContentEncryptionConfiguration?: #RemoveCustomerContentEncryptionConfiguration
	RequesterPaysEnabled?: #RequesterPaysEnabled
	ResultConfigurationUpdates?: #ResultConfigurationUpdates
}
