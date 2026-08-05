package fleet

import "strings"

#Properties: {
	// Configuration for Anywhere fleet.
	AnywhereConfiguration?: #AnywhereConfiguration
	// Determines when and how to apply fleet or location capacities. Allowed options are ON_UPDATE (default), ON_CREATE_AND_UPDATE and ON_CREATE_AND_UPDATE_WITH_AUTOSCALING. If you choose ON_CREATE_AND_UPDATE_WITH_AUTOSCALING, MinSize and MaxSize will still be applied on creation and on updates, but DesiredEC2Instances will only be applied once on fleet creation and will be ignored during updates to prevent conflicts with auto-scaling. During updates with ON_CREATE_AND_UPDATE_WITH_AUTOSCALING chosen, if current desired instance is lower than the new MinSize, it will be increased to the new MinSize; if current desired instance is larger than the new MaxSize, it will be decreased to the new MaxSize.
	ApplyCapacity?: "ON_UPDATE" | "ON_CREATE_AND_UPDATE" | "ON_CREATE_AND_UPDATE_WITH_AUTOSCALING"
	// A unique identifier for a build to be deployed on the new fleet. If you are deploying the fleet with a custom game build, you must specify this property. The build must have been successfully uploaded to Amazon GameLift and be in a READY status. This fleet setting cannot be changed once the fleet is created.
	BuildId?: string & =~"^build-\\S+|^arn:.*:build/build-\\S+"
	// Indicates whether to generate a TLS/SSL certificate for the new fleet. TLS certificates are used for encrypting traffic between game clients and game servers running on GameLift. If this parameter is not set, certificate generation is disabled. This fleet setting cannot be changed once the fleet is created.
	CertificateConfiguration?: #CertificateConfiguration
	// ComputeType to differentiate EC2 hardware managed by GameLift and Anywhere hardware managed by the customer.
	ComputeType?: "EC2" | "ANYWHERE"
	// A human-readable description of a fleet.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// [DEPRECATED] The number of EC2 instances that you want this fleet to host. When creating a new fleet, GameLift automatically sets this value to "1" and initiates a single instance. Once the fleet is active, update this value to trigger GameLift to add or remove instances from the fleet.
	DesiredEC2Instances?: int & >=0
	// A range of IP addresses and port settings that allow inbound traffic to connect to server processes on an Amazon GameLift server.
	EC2InboundPermissions?: [...#IpPermission]
	// The name of an EC2 instance type that is supported in Amazon GameLift. A fleet instance type determines the computing resources of each instance in the fleet, including CPU, memory, storage, and networking capacity. Amazon GameLift supports the following EC2 instance types. See Amazon EC2 Instance Types for detailed descriptions.
	EC2InstanceType?: string & =~"^.*..*$"
	// Indicates whether to use On-Demand instances or Spot instances for this fleet. If empty, the default is ON_DEMAND. Both categories of instances use identical hardware and configurations based on the instance type selected for this fleet.
	FleetType?: "ON_DEMAND" | "SPOT"
	// A unique identifier for an AWS IAM role that manages access to your AWS services. With an instance role ARN set, any application that runs on an instance in this fleet can assume the role, including install scripts, server processes, and daemons (background processes). Create a role or look up a role's ARN from the IAM dashboard in the AWS Management Console.
	InstanceRoleARN?: string & =~"^arn:aws(-.*)?:[a-z-]+:(([a-z]+-)+[0-9])?:([0-9]{12})?:[^.]+$" & strings.MinRunes(1)
	// Credentials provider implementation that loads credentials from the Amazon EC2 Instance Metadata Service.
	InstanceRoleCredentialsProvider?: "SHARED_CREDENTIAL_FILE"
	// This parameter is no longer used. When hosting a custom game build, specify where Amazon GameLift should store log files using the Amazon GameLift server API call ProcessReady()
	LogPaths?: [...string]
	// [DEPRECATED] The maximum value that is allowed for the fleet's instance count. When creating a new fleet, GameLift automatically sets this value to "1". Once the fleet is active, you can change this value.
	MaxSize?: int & >=0
	// The name of an Amazon CloudWatch metric group. A metric group aggregates the metrics for all fleets in the group. Specify a string containing the metric group name. You can use an existing name or use a new name to create a new metric group. Currently, this parameter can have only one string.
	MetricGroups?: [...string]
	// [DEPRECATED] The minimum value allowed for the fleet's instance count. When creating a new fleet, GameLift automatically sets this value to "0". After the fleet is active, you can change this value.
	MinSize?: int & >=0
	// A descriptive label that is associated with a fleet. Fleet names do not need to be unique.
	Name: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// A game session protection policy to apply to all game sessions hosted on instances in this fleet. When protected, active game sessions cannot be terminated during a scale-down event. If this parameter is not set, instances in this fleet default to no protection. You can change a fleet's protection policy to affect future game sessions on the fleet. You can also set protection for individual game sessions.
	NewGameSessionProtectionPolicy?: "FullProtection" | "NoProtection"
	// A unique identifier for the AWS account with the VPC that you want to peer your Amazon GameLift fleet with. You can find your account ID in the AWS Management Console under account settings.
	PeerVpcAwsAccountId?: string & =~"^[0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// A unique identifier for a VPC with resources to be accessed by your Amazon GameLift fleet. The VPC must be in the same Region as your fleet. To look up a VPC ID, use the VPC Dashboard in the AWS Management Console.
	PeerVpcId?: string & =~"^vpc-\\S+" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// Configuration for player gateway.
	PlayerGatewayConfiguration?: #PlayerGatewayConfiguration
	// The player gateway mode for the fleet.
	PlayerGatewayMode?: "DISABLED" | "ENABLED" | "REQUIRED"
	// A policy that limits the number of game sessions an individual player can create over a span of time for this fleet.
	ResourceCreationLimitPolicy?: #ResourceCreationLimitPolicy
	// Instructions for launching server processes on each instance in the fleet. Server processes run either a custom game build executable or a Realtime script. The runtime configuration defines the server executables or launch script file, launch parameters, and the number of processes to run concurrently on each instance. When creating a fleet, the runtime configuration must have at least one server process configuration; otherwise the request fails with an invalid request exception.

This parameter is required unless the parameters ServerLaunchPath and ServerLaunchParameters are defined. Runtime configuration has replaced these parameters, but fleets that use them will continue to work.
	RuntimeConfiguration?: #RuntimeConfiguration
	// A list of rules that control how a fleet is scaled.
	ScalingPolicies?: [...#ScalingPolicy]
	// A unique identifier for a Realtime script to be deployed on a new Realtime Servers fleet. The script must have been successfully uploaded to Amazon GameLift. This fleet setting cannot be changed once the fleet is created.

Note: It is not currently possible to use the !Ref command to reference a script created with a CloudFormation template for the fleet property ScriptId. Instead, use Fn::GetAtt Script.Arn or Fn::GetAtt Script.Id to retrieve either of these properties as input for ScriptId. Alternatively, enter a ScriptId string manually.
	ScriptId?: string & =~"^script-\\S+|^arn:.*:script/script-\\S+"
	// This parameter is no longer used but is retained for backward compatibility. Instead, specify server launch parameters in the RuntimeConfiguration parameter. A request must specify either a runtime configuration or values for both ServerLaunchParameters and ServerLaunchPath.
	ServerLaunchParameters?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// This parameter is no longer used. Instead, specify a server launch path using the RuntimeConfiguration parameter. Requests that specify a server launch path and launch parameters instead of a runtime configuration will continue to work.
	ServerLaunchPath?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	// An array of key-value pairs to apply to this resource.
	Tags?: [...#Tag]
}

#AnywhereConfiguration: {
	// Cost of compute can be specified on Anywhere Fleets to prioritize placement across Queue destinations based on Cost.
	Cost: string & =~"^\\d{1,5}(?:\\.\\d{1,5})?$" & strings.MinRunes(1) & strings.MaxRunes(11)
}

#CertificateConfiguration: {
	CertificateType: "DISABLED" | "GENERATED"
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
	// Defaults to MinSize if not defined. The number of EC2 instances you want to maintain in the specified fleet location. This value must fall between the minimum and maximum size limits.
	DesiredEC2Instances?: int & >=0
	// Configuration options for Amazon GameLift Servers-managed capacity behavior.
	ManagedCapacityConfiguration?: #ManagedCapacityConfiguration
	// The maximum value that is allowed for the fleet's instance count for a location. When creating a new fleet, GameLift automatically sets this value to "1". Once the fleet is active, you can change this value.
	MaxSize: int & >=0
	// The minimum value allowed for the fleet's instance count for a location. When creating a new fleet, GameLift automatically sets this value to "0". After the fleet is active, you can change this value.
	MinSize?: int & >=0
}

#LocationConfiguration: {
	Location: #Location
	LocationCapacity?: #LocationCapacity
	// The player gateway status for the location.
	PlayerGatewayStatus?: "DISABLED" | "ENABLED"
}

#ManagedCapacityConfiguration: {
	// Length of time, in minutes, that Amazon GameLift Servers will wait before scaling in your MinSize and DesiredInstances to 0 after a period with no game session activity.
	ScaleInAfterInactivityMinutes?: int & >=5 & <=1440
	// The strategy Amazon GameLift Servers will use to automatically scale your capacity to and from zero in response to game session activity. Game session activity refers to any active running sessions or game session requests. When set to SCALE_TO_AND_FROM_ZERO, MinSize must not be specified and will be managed automatically. When set to MANUAL, MinSize is required.
	ZeroCapacityStrategy: "SCALE_TO_AND_FROM_ZERO" | "MANUAL"
}

#PlayerGatewayConfiguration: {
	// The IP protocol supported by the game server.
	GameServerIpProtocolSupported?: "IPv4" | "DUAL_STACK"
}

#ResourceCreationLimitPolicy: {
	// The maximum number of game sessions that an individual can create during the policy period.
	NewGameSessionsPerCreator?: int & >=0
	// The time span used in evaluating the resource creation limit policy.
	PolicyPeriodInMinutes?: int & >=0
}

#RuntimeConfiguration: {
	// The maximum amount of time (in seconds) that a game session can remain in status ACTIVATING. If the game session is not active before the timeout, activation is terminated and the game session status is changed to TERMINATED.
	GameSessionActivationTimeoutSeconds?: int & >=1 & <=600
	// The maximum number of game sessions with status ACTIVATING to allow on an instance simultaneously. This setting limits the amount of instance resources that can be used for new game activations at any one time.
	MaxConcurrentGameSessionActivations?: int & >=1 & <=2147483647
	// A collection of server process configurations that describe which server processes to run on each instance in a fleet.
	ServerProcesses?: [...#ServerProcess]
}

#ScalingPolicy: {
	// Comparison operator to use when measuring a metric against the threshold value.
	ComparisonOperator?: "GreaterThanOrEqualToThreshold" | "GreaterThanThreshold" | "LessThanThreshold" | "LessThanOrEqualToThreshold"
	// Length of time (in minutes) the metric must be at or beyond the threshold before a scaling event is triggered.
	EvaluationPeriods?: int & >=1
	Location?: #Location
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
	// Current status of the scaling policy. The scaling policy can be in force only when in an ACTIVE status. Scaling policies can be suspended for individual fleets. If the policy is suspended for a fleet, the policy status does not change.
	Status?: "ACTIVE" | "UPDATE_REQUESTED" | "UPDATING" | "DELETE_REQUESTED" | "DELETING" | "DELETED" | "ERROR"
	// An object that contains settings for a target-based scaling policy.
	TargetConfiguration?: #TargetConfiguration
	// Metric value used to trigger a scaling event.
	Threshold?: number
	// The current status of the fleet's scaling policies in a requested fleet location. The status PENDING_UPDATE indicates that an update was requested for the fleet but has not yet been completed for the location.
	UpdateStatus?: "PENDING_UPDATE"
}

#ServerProcess: {
	// The number of server processes that use this configuration to run concurrently on an instance.
	ConcurrentExecutions: int & >=1
	// The location of the server executable in a custom game build or the name of the Realtime script file that contains the Init() function. Game builds and Realtime scripts are installed on instances at the root:

Windows (for custom game builds only): C:\game. Example: "C:\game\MyGame\server.exe"

Linux: /local/game. Examples: "/local/game/MyGame/server.exe" or "/local/game/MyRealtimeScript.js"
	LaunchPath: string & =~"^([Cc]:\\\\game\\S+|/local/game/\\S+)" & strings.MinRunes(1) & strings.MaxRunes(1024)
	// An optional list of parameters to pass to the server executable or Realtime script on launch.
	Parameters?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
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
