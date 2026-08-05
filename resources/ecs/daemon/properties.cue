package daemon

#Properties: {
	// The Amazon Resource Names (ARNs) of the capacity providers associated with the daemon.
	CapacityProviderArns?: [...string]
	// The Amazon Resource Name (ARN) of the cluster that the daemon is running in.
	ClusterArn?: string
	DaemonName?: string
	// The Amazon Resource Name (ARN) of the daemon task definition used by this revision.
	DaemonTaskDefinitionArn?: string
	// The deployment configuration used for this daemon deployment.
	DeploymentConfiguration?: #DaemonDeploymentConfiguration
	// Specifies whether Amazon ECS managed tags are turned on for the daemon tasks.
	EnableECSManagedTags?: bool
	// Specifies whether the execute command functionality is turned on for the daemon tasks.
	EnableExecuteCommand?: bool
	// Specifies whether tags are propagated from the daemon to the daemon tasks.
	PropagateTags?: "DAEMON" | "NONE"
	Tags?: [...#Tag]
}

#DaemonAlarmConfiguration: {
	// The CloudWatch alarm names to monitor during a daemon deployment.
	AlarmNames?: [...string]
	// Determines whether to use the CloudWatch alarm option in the daemon deployment process. The default value is ``false``.
	Enable?: bool
}

#DaemonDeploymentConfiguration: {
	// The CloudWatch alarm configuration for the daemon deployment. When alarms are triggered during a deployment, the deployment can be automatically rolled back.
	Alarms?: #DaemonAlarmConfiguration
	// The amount of time (in minutes) to wait after a successful deployment step before proceeding. This allows time to monitor for issues before continuing. The default value is 0.
	BakeTimeInMinutes?: int & >=0 & <=1440
	// The percentage of container instances to drain simultaneously during a daemon deployment. Valid values are between 0.0 and 100.0.
	DrainPercent?: number & >=0 & <=100
}

#Tag: {
	// One part of a key-value pair that make up a tag. A ``key`` is a general label that acts like a category for more specific tag values.
	Key: string
	// The optional part of a key-value pair that make up a tag. A ``value`` acts as a descriptor within a tag category (key).
	Value?: string
}
