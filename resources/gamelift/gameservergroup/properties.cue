package gameservergroup

#Properties: {
	// Configuration settings to define a scaling policy for the Auto Scaling group that is optimized for game hosting. Updating this game server group property will not take effect for the created EC2 Auto Scaling group, please update the EC2 Auto Scaling group directly after creating the resource.
	AutoScalingPolicy?: #AutoScalingPolicy
	// The fallback balancing method to use for the game server group when Spot Instances in a Region become unavailable or are not viable for game hosting.
	BalancingStrategy?: #BalancingStrategy
	// The type of delete to perform.
	DeleteOption?: #DeleteOption
	// An identifier for the new game server group.
	GameServerGroupName: #GameServerGroupName
	// A flag that indicates whether instances in the game server group are protected from early termination.
	GameServerProtectionPolicy?: #GameServerProtectionPolicy
	// A set of EC2 instance types to use when creating instances in the group.
	InstanceDefinitions: #InstanceDefinitions
	// The EC2 launch template that contains configuration settings and game server code to be deployed to all instances in the game server group. Updating this game server group property will not take effect for the created EC2 Auto Scaling group, please update the EC2 Auto Scaling group directly after creating the resource.
	LaunchTemplate?: #LaunchTemplate
	// The maximum number of instances allowed in the EC2 Auto Scaling group. Updating this game server group property will not take effect for the created EC2 Auto Scaling group, please update the EC2 Auto Scaling group directly after creating the resource.
	MaxSize?: #MaxSize
	// The minimum number of instances allowed in the EC2 Auto Scaling group. Updating this game server group property will not take effect for the created EC2 Auto Scaling group, please update the EC2 Auto Scaling group directly after creating the resource.
	MinSize?: #MinSize
	// The Amazon Resource Name (ARN) for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups.
	RoleArn: #RoleArn
	// A list of labels to assign to the new game server group resource. Updating game server group tags with CloudFormation will not take effect. Please update this property using AWS GameLift APIs instead.
	Tags?: #Tags
	// A list of virtual private cloud (VPC) subnets to use with instances in the game server group. Updating this game server group property will not take effect for the created EC2 Auto Scaling group, please update the EC2 Auto Scaling group directly after creating the resource.
	VpcSubnets?: #VpcSubnets
}

#AutoScalingGroupArn: string & strings.MinRunes(0) & strings.MaxRunes(256)

#AutoScalingPolicy: {
	EstimatedInstanceWarmup?: #EstimatedInstanceWarmup
	TargetTrackingConfiguration: #TargetTrackingConfiguration
}

#BalancingStrategy: "SPOT_ONLY" | "SPOT_PREFERRED" | "ON_DEMAND_ONLY"

#CreationTime: string

#DeleteOption: "SAFE_DELETE" | "FORCE_DELETE" | "RETAIN"

#EstimatedInstanceWarmup: number

#GameServerGroup: {
	AutoScalingGroupArn?: #AutoScalingGroupArn
	BalancingStrategy?: #BalancingStrategy
	CreationTime?: #CreationTime
	GameServerGroupArn?: #GameServerGroupArn
	GameServerGroupName?: #GameServerGroupName
	GameServerProtectionPolicy?: #GameServerProtectionPolicy
	InstanceDefinitions?: #InstanceDefinitions
	LastUpdatedTime?: #LastUpdatedTime
	RoleArn?: #RoleArn
	Status?: #Status
	StatusReason?: #StatusReason
	SuspendedActions?: #SuspendedActions
}

#GameServerGroupArn: string & =~"^arn:.*:gameservergroup\\/[a-zA-Z0-9-\\.]*" & strings.MinRunes(1) & strings.MaxRunes(256)

#GameServerGroupName: string & =~"[a-zA-Z0-9-\\.]+" & strings.MinRunes(1) & strings.MaxRunes(128)

#GameServerProtectionPolicy: "NO_PROTECTION" | "FULL_PROTECTION"

#InstanceDefinition: {
	InstanceType: #InstanceType
	WeightedCapacity?: #WeightedCapacity
}

#InstanceDefinitions: [...#InstanceDefinition]

#InstanceType: string

#LastUpdatedTime: string

#LaunchTemplate: {
	LaunchTemplateId?: #LaunchTemplateId
	LaunchTemplateName?: #LaunchTemplateName
	Version?: #Version
}

#LaunchTemplateId: string

#LaunchTemplateName: string

#MaxSize: number & >=1

#MinSize: number & >=0

#RoleArn: string & =~"^arn:.*:role\\/[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(256)

#Status: "NEW" | "ACTIVATING" | "ACTIVE" | "DELETE_SCHEDULED" | "DELETING" | "DELETED" | "ERROR"

#StatusReason: string & strings.MinRunes(1) & strings.MaxRunes(1024)

#SuspendedActions: [..."REPLACE_INSTANCE_TYPES"]

#Tag: {
	// The key for a developer-defined key:value pair for tagging an AWS resource.
	Key?: string
	// The value for a developer-defined key:value pair for tagging an AWS resource.
	Value?: string
}

#Tags: [...#Tag]

#TargetTrackingConfiguration: {
	TargetValue: #TargetValue
}

#TargetValue: number

#Version: string

#VpcSubnets: [...string & =~"^subnet-[0-9a-z]+$" & strings.MinRunes(15) & strings.MaxRunes(24)]

#WeightedCapacity: string
