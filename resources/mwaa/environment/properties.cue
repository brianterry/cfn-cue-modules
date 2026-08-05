package environment

#Properties: {
	// Key/value pairs representing Airflow configuration variables.
	// Keys are prefixed by their section:
	// [core]
	// dags_folder={AIRFLOW_HOME}/dags
	// Would be represented as
	// "core.dags_folder": "{AIRFLOW_HOME}/dags"
	AirflowConfigurationOptions?: {...}
	AirflowVersion?: #AirflowVersion
	DagS3Path?: #RelativePath
	EndpointManagement?: #EndpointManagement
	EnvironmentClass?: #EnvironmentClass
	ExecutionRoleArn?: #ExecutionRoleArn
	KmsKey?: #KmsKey
	MaxWebservers?: #MaxWebservers
	MaxWorkers?: #MaxWorkers
	MinWebservers?: #MinWebservers
	MinWorkers?: #MinWorkers
	Name: #EnvironmentName
	NetworkConfiguration?: #NetworkConfiguration
	PluginsS3ObjectVersion?: #S3ObjectVersion
	PluginsS3Path?: #RelativePath
	RequirementsS3ObjectVersion?: #S3ObjectVersion
	RequirementsS3Path?: #RelativePath
	Schedulers?: #Schedulers
	SourceBucketArn?: #S3BucketArn
	StartupScriptS3ObjectVersion?: #S3ObjectVersion
	StartupScriptS3Path?: #RelativePath
	// A map of tags for the environment.
	Tags?: {...}
	WebserverAccessMode?: #WebserverAccessMode
	WeeklyMaintenanceWindowStart?: #WeeklyMaintenanceWindowStart
	WorkerReplacementStrategy?: #WorkerReplacementStrategy
}

#LastUpdate: {
	CreatedAt?: #UpdateCreatedAt
	Error?: #UpdateError
	Status?: #UpdateStatus
	WorkerReplacementStrategy?: #WorkerReplacementStrategy
}

#LoggingConfiguration: {
	DagProcessingLogs?: #ModuleLoggingConfiguration
	SchedulerLogs?: #ModuleLoggingConfiguration
	TaskLogs?: #ModuleLoggingConfiguration
	WebserverLogs?: #ModuleLoggingConfiguration
	WorkerLogs?: #ModuleLoggingConfiguration
}

#LoggingConfigurationInput: {
	DagProcessingLogs?: #ModuleLoggingConfigurationInput
	SchedulerLogs?: #ModuleLoggingConfigurationInput
	TaskLogs?: #ModuleLoggingConfigurationInput
	WebserverLogs?: #ModuleLoggingConfigurationInput
	WorkerLogs?: #ModuleLoggingConfigurationInput
}

#ModuleLoggingConfiguration: {
	CloudWatchLogGroupArn?: #CloudWatchLogGroupArn
	Enabled?: #LoggingEnabled
	LogLevel?: #LoggingLevel
}

#ModuleLoggingConfigurationInput: {
	Enabled?: #LoggingEnabled
	LogLevel?: #LoggingLevel
}

#NetworkConfiguration: {
	// A list of security groups to use for the environment.
	SecurityGroupIds?: [...#SecurityGroupId]
	// A list of subnets to use for the environment. These must be private subnets, in the same VPC, in two different availability zones.
	SubnetIds?: [...#SubnetId]
}

#UpdateError: {
	ErrorCode?: #ErrorCode
	ErrorMessage?: #ErrorMessage
}
