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

#AirflowArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b)(-[a-z]+)?:airflow:[a-z0-9\\-]+:\\d{12}:environment/\\w+" & strings.MinRunes(1) & strings.MaxRunes(1224)

#AirflowVersion: string & =~"^[0-9a-z.]+$" & strings.MaxRunes(32)

#CeleryExecutorQueue: string & strings.MaxRunes(1224)

#CloudWatchLogGroupArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b)(-[a-z]+)?:logs:[a-z0-9\\-]+:\\d{12}:log-group:\\w+" & strings.MaxRunes(1224)

#ConfigKey: string & =~"^[a-z]+([a-z._]*[a-z]+)?$" & strings.MaxRunes(64)

#ConfigValue: string & =~".*" & strings.MaxRunes(256)

#CreatedAt: string

#DatabaseVpcEndpointService: string & strings.MaxRunes(1224)

#EndpointManagement: "CUSTOMER" | "SERVICE"

#EnvironmentArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b)(-[a-z]+)?:airflow:[a-z0-9\\-]+:\\d{12}:environment/\\w+" & strings.MinRunes(1) & strings.MaxRunes(1224)

#EnvironmentClass: string & strings.MinRunes(1) & strings.MaxRunes(1024)

#EnvironmentName: string & =~"^[a-zA-Z][0-9a-zA-Z\\-_]*$" & strings.MinRunes(1) & strings.MaxRunes(80)

#EnvironmentStatus: "CREATING" | "CREATE_FAILED" | "AVAILABLE" | "UPDATING" | "DELETING" | "DELETED" | "UPDATE_FAILED" | "UNAVAILABLE" | "PENDING"

#ErrorCode: string

#ErrorMessage: string & =~"^.+$" & strings.MinRunes(1) & strings.MaxRunes(1024)

#ExecutionRoleArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b)(-[a-z]+)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MaxRunes(1224)

#KmsKey: string & =~"^(((arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b)(-[a-z]+)?:kms:[a-z]{2}-[a-z]+-\\d:\\d+:)?key\\/)?[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}|(arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):kms:[a-z]{2}-[a-z]+-\\d:\\d+:)?alias/.+)$" & strings.MaxRunes(1224)

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

#LoggingEnabled: bool

#LoggingLevel: "CRITICAL" | "ERROR" | "WARNING" | "INFO" | "DEBUG"

#MaxWebservers: int & >=1

#MaxWorkers: int & >=1

#MinWebservers: int & >=1

#MinWorkers: int & >=1

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

#RelativePath: string & =~".*" & strings.MaxRunes(1024)

#S3BucketArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b)(-[a-z]+)?:s3:::[a-z0-9.\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(1224)

#S3ObjectVersion: string & strings.MaxRunes(1024)

#Schedulers: int & >=1

#SecurityGroupId: string & =~"^sg-[a-zA-Z0-9\\-._]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)

#ServiceRoleArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b)(-[a-z]+)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MaxRunes(1224)

#SubnetId: string & =~"^subnet-[a-zA-Z0-9\\-._]+$" & strings.MaxRunes(1024)

#UpdateCreatedAt: string

#UpdateError: {
	ErrorCode?: #ErrorCode
	ErrorMessage?: #ErrorMessage
}

#UpdateStatus: "SUCCESS" | "PENDING" | "FAILED"

#WebserverAccessMode: "PRIVATE_ONLY" | "PUBLIC_ONLY" | "PUBLIC_AND_PRIVATE"

#WebserverUrl: string & =~"^https://.+$" & strings.MinRunes(1) & strings.MaxRunes(256)

#WebserverVpcEndpointService: string & strings.MaxRunes(1224)

#WeeklyMaintenanceWindowStart: string & =~"(MON|TUE|WED|THU|FRI|SAT|SUN):([01]\\d|2[0-3]):(00|30)" & strings.MaxRunes(9)

#WorkerReplacementStrategy: "FORCED" | "GRACEFUL"
