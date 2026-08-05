package application

import "strings"

#Properties: {
	Architecture?: #Architecture
	// Configuration for Auto Start of Application.
	AutoStartConfiguration?: #AutoStartConfiguration
	// Configuration for Auto Stop of Application.
	AutoStopConfiguration?: #AutoStopConfiguration
	// The IAM IdentityCenter configuration for trusted-identity-propagation on this application. Supported with release labels emr-7.8.0 and above.
	IdentityCenterConfiguration?: #IdentityCenterConfiguration
	ImageConfiguration?: #ImageConfigurationInput
	// Initial capacity initialized when an Application is started.
	InitialCapacity?: #InitialCapacityConfigMap
	InteractiveConfiguration?: #InteractiveConfiguration
	// Maximum allowed cumulative resources for an Application. No new resources will be created once the limit is hit.
	MaximumCapacity?: #MaximumAllowedResources
	MonitoringConfiguration?: #MonitoringConfiguration
	// User friendly Application name.
	Name?: string & =~"^[A-Za-z0-9._\\/#-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	// Network Configuration for customer VPC connectivity.
	NetworkConfiguration?: #NetworkConfiguration
	// EMR release label.
	ReleaseLabel: string & =~"^[A-Za-z0-9._/-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
	RuntimeConfiguration?: #ConfigurationList
	// The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.
	SchedulerConfiguration?: #SchedulerConfiguration
	// Tag map with key and value
	Tags?: [...#Tag]
	// The type of the application
	Type: string
	// The key-value pairs that specify worker type to WorkerTypeSpecificationInput. This parameter must contain all valid worker types for a Spark or Hive application. Valid worker types include Driver and Executor for Spark applications and HiveDriver and TezTask for Hive applications. You can either set image details in this parameter for each worker type, or in imageConfiguration for all worker types.
	WorkerTypeSpecifications?: #WorkerTypeSpecificationInputMap
}

#AutoStartConfiguration: {
	// If set to true, the Application will automatically start. Defaults to true.
	Enabled?: bool
}

#AutoStopConfiguration: {
	// If set to true, the Application will automatically stop after being idle. Defaults to true.
	Enabled?: bool
	// The amount of time [in minutes] to wait before auto stopping the Application when idle. Defaults to 15 minutes.
	IdleTimeoutMinutes?: int
}

#CloudWatchLoggingConfiguration: {
	// If set to false, CloudWatch logging will be turned off. Defaults to false.
	Enabled?: bool
	// KMS key ARN to encrypt the logs stored in given CloudWatch log-group.
	EncryptionKeyArn?: #EncryptionKeyArn
	// Log-group name to produce log-streams on CloudWatch. If undefined, logs will be produced in a default log-group /aws/emr-serverless
	LogGroupName?: #LogGroupName
	// Log-stream name prefix by which log-stream names will start in the CloudWatch Log-group.
	LogStreamNamePrefix?: #LogStreamNamePrefix
	// The specific log-streams which need to be uploaded to CloudWatch.
	LogTypeMap?: [...#LogTypeMapKeyValuePair]
}

#ConfigurationObject: {
	// String with a maximum length of 1024.
	Classification: #Classification
	Configurations?: [...#ConfigurationObject]
	Properties?: {...}
}

#IdentityCenterConfiguration: {
	// The IAM IdentityCenter instance arn
	IdentityCenterInstanceArn?: string & =~"^arn:(aws[a-zA-Z0-9-]*):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#ImageConfigurationInput: {
	// The URI of an image in the Amazon ECR registry. This field is required when you create a new application. If you leave this field blank in an update, Amazon EMR will remove the image configuration.
	ImageUri?: string & =~"^([a-z0-9]+[a-z0-9-.]*)\\/((?:[a-z0-9]+(?:[._-][a-z0-9]+)*\\/)*[a-z0-9]+(?:[._-][a-z0-9]+)*)(?:\\:([a-zA-Z0-9_][a-zA-Z0-9-._]{0,299})|@(sha256:[0-9a-f]{64}))$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#InitialCapacityConfig: {
	WorkerConfiguration: #WorkerConfiguration
	// Initial count of workers to be initialized when an Application is started. This count will be continued to be maintained until the Application is stopped
	WorkerCount: int & >=1 & <=1000000
}

#InitialCapacityConfigKeyValuePair: {
	// Worker type for an analytics framework.
	Key: string & =~"^[a-zA-Z]+[-_]*[a-zA-Z]+$" & strings.MinRunes(1) & strings.MaxRunes(50)
	Value: #InitialCapacityConfig
}

#InteractiveConfiguration: {
	// Enables an Apache Livy endpoint that you can connect to and run interactive jobs
	LivyEndpointEnabled?: bool
	// Enables interactive sessions on the application
	SessionEnabled?: bool
	// Enabled you to connect an Application to Amazon EMR Studio to run interactive workloads in a notebook
	StudioEnabled?: bool
}

#LogTypeMapKeyValuePair: {
	Key: #WorkerTypeString
	Value: #LogTypeList
}

#ManagedPersistenceMonitoringConfiguration: {
	// If set to false, managed logging will be turned off. Defaults to true.
	Enabled?: bool
	// KMS key ARN to encrypt the logs stored in managed persistence
	EncryptionKeyArn?: #EncryptionKeyArn
}

#MaximumAllowedResources: {
	// Per worker CPU resource. vCPU is the only supported unit and specifying vCPU is optional.
	Cpu: #CpuSize
	// Per worker Disk resource. GB is the only supported unit and specifying GB is optional
	Disk?: #DiskSize
	// Per worker memory resource. GB is the only supported unit and specifying GB is optional.
	Memory: #MemorySize
}

#MonitoringConfiguration: {
	// CloudWatch logging configurations for a JobRun.
	CloudWatchLoggingConfiguration?: #CloudWatchLoggingConfiguration
	// Managed log persistence configurations for a JobRun.
	ManagedPersistenceMonitoringConfiguration?: #ManagedPersistenceMonitoringConfiguration
	// Prometheus monitoring configurations for a JobRun.
	PrometheusMonitoringConfiguration?: #PrometheusMonitoringConfiguration
	// S3 monitoring configurations for a JobRun.
	S3MonitoringConfiguration?: #S3MonitoringConfiguration
}

#NetworkConfiguration: {
	// The ID of the security groups in the VPC to which you want to connect your job or application.
	SecurityGroupIds?: [...#SecurityGroupId]
	// The ID of the subnets in the VPC to which you want to connect your job or application.
	SubnetIds?: [...#SubnetId]
}

#PrometheusMonitoringConfiguration: {
	// The remote write URL in the Amazon Managed Service for Prometheus workspace to send metrics to.
	RemoteWriteUrl?: #RemoteWriteUrl
}

#S3MonitoringConfiguration: {
	// KMS key ARN to encrypt the logs stored in given s3
	EncryptionKeyArn?: #EncryptionKeyArn
	LogUri?: #UriString
}

#SchedulerConfiguration: {
	// The maximum concurrent job runs on this application. If scheduler configuration is enabled on your application, the default value is 15. The valid range is 1 to 1000.
	MaxConcurrentRuns?: int
	// The maximum duration in minutes for the job in QUEUED state. If scheduler configuration is enabled on your application, the default value is 360 minutes (6 hours). The valid range is from 15 to 720.
	QueueTimeoutMinutes?: int
}

#Tag: {
	// The value for the tag. You can specify a value that is 1 to 128 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^[A-Za-z0-9 /_.:=+@-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^[A-Za-z0-9 /_.:=+@-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WorkerConfiguration: {
	// Per worker CPU resource. vCPU is the only supported unit and specifying vCPU is optional.
	Cpu: #CpuSize
	// Per worker Disk resource. GB is the only supported unit and specifying GB is optional
	Disk?: #DiskSize
	// Per worker DiskType resource. Shuffle optimized and Standard are only supported types and specifying diskType is optional
	DiskType?: #DiskType
	// Per worker memory resource. GB is the only supported unit and specifying GB is optional.
	Memory: #MemorySize
}

#WorkerTypeSpecificationInput: {
	ImageConfiguration?: #ImageConfigurationInput
}
