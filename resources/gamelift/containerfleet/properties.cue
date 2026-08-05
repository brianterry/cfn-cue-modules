package containerfleet

import "strings"

#Properties: {
	// Indicates whether to use On-Demand instances or Spot instances for this fleet. If empty, the default is ON_DEMAND. Both categories of instances use identical hardware and configurations based on the instance type selected for this fleet.
	BillingType?: "ON_DEMAND" | "SPOT"
	DeploymentConfiguration?: #DeploymentConfiguration
	// A human-readable description of a fleet.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// A unique identifier for an AWS IAM role that manages access to your AWS services. Create a role or look up a role's ARN from the IAM dashboard in the AWS Management Console.
	FleetRoleArn: string & =~"^arn:aws(-.*)?:[a-z-]+:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The name of the container group definition that will be created per game server. You must specify GAME_SERVER container group. You have the option to also specify one PER_INSTANCE container group.
	GameServerContainerGroupDefinitionName?: string & =~"^[a-zA-Z0-9\\-]+$|^arn:.*:containergroupdefinition\\/[a-zA-Z0-9\\-]+(:[0-9]+)?$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The number of desired game server container groups per instance, a number between 1-5000.
	GameServerContainerGroupsPerInstance?: int & >=1 & <=5000
	// A policy that limits the number of game sessions an individual player can create over a span of time for this fleet.
	GameSessionCreationLimitPolicy?: #GameSessionCreationLimitPolicy
	InstanceConnectionPortRange?: #ConnectionPortRange
	// A range of IP addresses and port settings that allow inbound traffic to connect to server processes on an Amazon GameLift server.
	InstanceInboundPermissions?: [...#IpPermission]
	// The name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See Amazon EC2 Instance Types for detailed descriptions.
	InstanceType?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	LogConfiguration?: #LogConfiguration
	// The name of an Amazon CloudWatch metric group. A metric group aggregates the metrics for all fleets in the group. Specify a string containing the metric group name. You can use an existing name or use a new name to create a new metric group. Currently, this parameter can have only one string.
	MetricGroups?: [...string]
	// A game session protection policy to apply to all game sessions hosted on instances in this fleet. When protected, active game sessions cannot be terminated during a scale-down event. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy to affect future game sessions on the fleet. You can also set protection for individual game sessions.
	NewGameSessionProtectionPolicy?: "FullProtection" | "NoProtection"
	// The name of the container group definition that will be created per instance. This field is optional if you specify GameServerContainerGroupDefinitionName.
	PerInstanceContainerGroupDefinitionName?: string & =~"^[a-zA-Z0-9\\-]+$|^arn:.*:containergroupdefinition\\/[a-zA-Z0-9\\-]+(:[0-9]+)?$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The player gateway mode for the container fleet.
	PlayerGatewayMode?: "DISABLED" | "ENABLED" | "REQUIRED"
	// A list of rules that control how a fleet is scaled.
	ScalingPolicies?: [...#ScalingPolicy]
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#ConnectionPortRange: {
	// A starting value for a range of allowed port numbers.
	FromPort: int & >=1 & <=60000
	// An ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than FromPort.
	ToPort: int & >=1 & <=60000
}

#DeploymentConfiguration: {
	// The strategy to apply in case of impairment; defaults to MAINTAIN.
	ImpairmentStrategy?: "MAINTAIN" | "ROLLBACK"
	// The minimum percentage of healthy required; defaults to 75.
	MinimumHealthyPercentage?: int & >=30 & <=75
	// The protection strategy for deployment on the container fleet; defaults to WITH_PROTECTION.
	ProtectionStrategy?: "WITH_PROTECTION" | "IGNORE_PROTECTION"
}

#DeploymentDetails: {
	// The ID of the last deployment on the container fleet. This field will be empty if the container fleet does not have a ContainerGroupDefinition attached.
	LatestDeploymentId?: string & =~"^[a-zA-Z0-9\\-]+$|^$" & strings.MaxRunes(1024)
}

#GameSessionCreationLimitPolicy: {
	// The maximum number of game sessions that an individual can create during the policy period.
	NewGameSessionsPerCreator?: int & >=0
	// The time span used in evaluating the resource creation limit policy.
	PolicyPeriodInMinutes?: int & >=0
}

#IpPermission: {
	// A starting value for a range of allowed port numbers.
	FromPort: int & >=1 & <=60000
	// A range of allowed IP addresses. This value must be expressed in CIDR notation. Example: "000.000.000.000/[subnet mask]" or optionally the shortened version "0.0.0.0/[subnet mask]".
	IpRange: string & =~"(^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(/([0-9]|[1-2][0-9]|3[0-2]))$)"
	// The network communication protocol used by the fleet.
	Protocol: "TCP" | "UDP"
	// An ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than FromPort.
	ToPort: int & >=1 & <=60000
}

#LocationCapacity: {
	// Defaults to MinSize if not defined. The number of EC2 instances you want to maintain in the specified fleet location. This value must fall between the minimum and maximum size limits. If any auto-scaling policy is defined for the container fleet, the desired instance will only be applied once during fleet creation and will be ignored in updates to avoid conflicts with auto-scaling. During updates with any auto-scaling policy defined, if current desired instance is lower than the new MinSize, it will be increased to the new MinSize; if current desired instance is larger than the new MaxSize, it will be decreased to the new MaxSize.
	DesiredEC2Instances?: int & >=0
	// Configuration options for Amazon GameLift Servers-managed capacity behavior.
	ManagedCapacityConfiguration?: #ManagedCapacityConfiguration
	// The maximum value that is allowed for the fleet's instance count for a location.
	MaxSize: int & >=0
	// The minimum value allowed for the fleet's instance count for a location.
	MinSize?: int & >=0
}

#LocationConfiguration: {
	Location: #Location
	LocationCapacity?: #LocationCapacity
	// The player gateway status for the location.
	PlayerGatewayStatus?: "DISABLED" | "ENABLED"
	StoppedActions?: #StoppedActions
}

#LogConfiguration: {
	LogDestination?: #LogDestination
	// If log destination is CLOUDWATCH, logs are sent to the specified log group in Amazon CloudWatch.
	LogGroupArn?: string & =~"[a-zA-Z0-9:/\\-\\*]+" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The name of the S3 bucket to pull logs from if S3 is the LogDestination
	S3BucketName?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#ManagedCapacityConfiguration: {
	// Length of time, in minutes, that Amazon GameLift Servers will wait before scaling in your MinSize and DesiredInstances to 0 after a period with no game session activity.
	ScaleInAfterInactivityMinutes?: int & >=5 & <=1440
	// The strategy Amazon GameLift Servers will use to automatically scale your capacity to and from zero in response to game session activity. Game session activity refers to any active running sessions or game session requests. When set to SCALE_TO_AND_FROM_ZERO, MinSize must not be specified and will be managed automatically. When set to MANUAL, MinSize is required.
	ZeroCapacityStrategy: "SCALE_TO_AND_FROM_ZERO" | "MANUAL"
}

#ScalingPolicy: {
	// Comparison operator to use when measuring a metric against the threshold value.
	ComparisonOperator?: "GreaterThanOrEqualToThreshold" | "GreaterThanThreshold" | "LessThanThreshold" | "LessThanOrEqualToThreshold"
	// Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.
	EvaluationPeriods?: int & >=1
	// Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment.
	MetricName: "ActivatingGameSessions" | "ActiveGameSessions" | "ActiveInstances" | "AvailableGameSessions" | "AvailablePlayerSessions" | "CurrentPlayerSessions" | "IdleInstances" | "PercentAvailableGameSessions" | "PercentIdleInstances" | "QueueDepth" | "WaitTime" | "ConcurrentActivatableGameSessions"
	// A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// The type of scaling policy to create. For a target-based policy, set the parameter MetricName to 'PercentAvailableGameSessions' and specify a TargetConfiguration. For a rule-based policy set the following parameters: MetricName, ComparisonOperator, Threshold, EvaluationPeriods, ScalingAdjustmentType, and ScalingAdjustment.
	PolicyType?: "RuleBased" | "TargetBased"
	// Amount of adjustment to make, based on the scaling adjustment type.
	ScalingAdjustment?: int
	// The type of adjustment to make to a fleet's instance count.
	ScalingAdjustmentType?: "ChangeInCapacity" | "ExactCapacity" | "PercentChangeInCapacity"
	// An object that contains settings for a target-based scaling policy.
	TargetConfiguration?: #TargetConfiguration
	// Metric value used to trigger a scaling event.
	Threshold?: number
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TargetConfiguration: {
	// Desired value to use with a target-based scaling policy. The value must be relevant for whatever metric the scaling policy is using. For example, in a policy using the metric PercentAvailableGameSessions, the target value should be the preferred size of the fleet's buffer (the percent of capacity that should be idle and ready for new game sessions).
	TargetValue: number
}
