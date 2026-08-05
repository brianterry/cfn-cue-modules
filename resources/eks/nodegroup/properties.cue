package nodegroup

import "strings"

#Properties: {
	// The AMI type for your node group.
	AmiType?: string
	// The capacity type of your managed node group.
	CapacityType?: string
	// Name of the cluster to create the node group in.
	ClusterName: string & strings.MinRunes(1)
	// The root device disk size (in GiB) for your node group instances.
	DiskSize?: int
	// Force the update if the existing node group's pods are unable to be drained due to a pod disruption budget issue.
	ForceUpdateEnabled?: bool
	// Specify the instance types for a node group.
	InstanceTypes?: [...string]
	// The Kubernetes labels to be applied to the nodes in the node group when they are created.
	Labels?: {...}
	// An object representing a node group's launch template specification.
	LaunchTemplate?: #LaunchTemplateSpecification
	// The node auto repair configuration for node group.
	NodeRepairConfig?: #NodeRepairConfig
	// The Amazon Resource Name (ARN) of the IAM role to associate with your node group.
	NodeRole: string
	// The unique name to give your node group.
	NodegroupName?: string & strings.MinRunes(1)
	// The AMI version of the Amazon EKS-optimized AMI to use with your node group.
	ReleaseVersion?: string
	// The remote access (SSH) configuration to use with your node group.
	RemoteAccess?: #RemoteAccess
	// The scaling configuration details for the Auto Scaling group that is created for your node group.
	ScalingConfig?: #ScalingConfig
	// The subnets to use for the Auto Scaling group that is created for your node group.
	Subnets: [...string]
	// The metadata, as key-value pairs, to apply to the node group to assist with categorization and organization. Follows same schema as Labels for consistency.
	Tags?: {...}
	// The Kubernetes taints to be applied to the nodes in the node group when they are created.
	Taints?: [...#Taint]
	// The node group update configuration.
	UpdateConfig?: #UpdateConfig
	// The Kubernetes version to use for your managed nodes.
	Version?: string
	// The warm pool configuration details for the Auto Scaling group that is created for the node group.
	WarmPoolConfig?: #WarmPoolConfig
}

#LaunchTemplateSpecification: {
	Id?: string & strings.MinRunes(1)
	Name?: string & strings.MinRunes(1)
	Version?: string & strings.MinRunes(1)
}

#NodeRepairConfig: {
	// Set this value to true to enable node auto repair for the node group.
	Enabled?: bool
	// Specify the maximum number of nodes that can be repaired concurrently or in parallel, expressed as a count of unhealthy nodes. This gives you finer-grained control over the pace of node replacements. When using this, you cannot also set MaxParallelNodesRepairedPercentage at the same time.
	MaxParallelNodesRepairedCount?: int & >=1
	// Specify the maximum number of nodes that can be repaired concurrently or in parallel, expressed as a percentage of unhealthy nodes. This gives you finer-grained control over the pace of node replacements. When using this, you cannot also set MaxParallelNodesRepairedCount at the same time.
	MaxParallelNodesRepairedPercentage?: int & >=1 & <=100
	// Specify a count threshold of unhealthy nodes, above which node auto repair actions will stop. When using this, you cannot also set MaxUnhealthyNodeThresholdPercentage at the same time.
	MaxUnhealthyNodeThresholdCount?: int & >=1
	// Specify a percentage threshold of unhealthy nodes, above which node auto repair actions will stop. When using this, you cannot also set MaxUnhealthyNodeThresholdCount at the same time.
	MaxUnhealthyNodeThresholdPercentage?: int & >=1 & <=100
	// Specify granular overrides for specific repair actions. These overrides control the repair action and the repair delay time before a node is considered eligible for repair. If you use this, you must specify all the values.
	NodeRepairConfigOverrides?: [...#NodeRepairConfigOverrides]
}

#NodeRepairConfigOverrides: {
	// Specify the minimum time in minutes to wait before attempting to repair a node with this specific NodeMonitoringCondition and NodeUnhealthyReason.
	MinRepairWaitTimeMins?: int & >=1
	// Specify an unhealthy condition reported by the node monitoring agent that this override would apply to.
	NodeMonitoringCondition?: string
	// Specify a reason reported by the node monitoring agent that this override would apply to.
	NodeUnhealthyReason?: string
	// Specify the repair action to take for nodes when all of the specified conditions are met.
	RepairAction?: "Replace" | "Reboot" | "NoAction"
}

#RemoteAccess: {
	Ec2SshKey: string
	SourceSecurityGroups?: [...string]
}

#ScalingConfig: {
	DesiredSize?: int & >=0
	MaxSize?: int & >=1
	MinSize?: int & >=0
}

#Taint: {
	Effect?: string & strings.MinRunes(1)
	Key?: string & strings.MinRunes(1)
	Value?: string & strings.MinRunes(0)
}

#UpdateConfig: {
	// The maximum number of nodes unavailable at once during a version update. Nodes will be updated in parallel. This value or maxUnavailablePercentage is required to have a value.The maximum number is 100. 
	MaxUnavailable?: number & >=1
	// The maximum percentage of nodes unavailable during a version update. This percentage of nodes will be updated in parallel, up to 100 nodes at once. This value or maxUnavailable is required to have a value.
	MaxUnavailablePercentage?: number & >=1 & <=100
	// The configuration for the behavior to follow during an node group version update of this managed node group. You choose between two possible strategies for replacing nodes during an UpdateNodegroupVersion action.
	UpdateStrategy?: string
}

#WarmPoolConfig: {
	// Enable or disable warm pool for the node group.
	Enabled?: bool
	// The maximum number of instances that are allowed to be in the warm pool.
	MaxGroupPreparedCapacity?: int & >=-1
	// The minimum number of instances to maintain in the warm pool.
	MinSize?: int & >=0
	// The desired state of warm pool instances.
	PoolState?: string
	// Whether to return instances to the warm pool during scale-in instead of terminating them.
	ReuseOnScaleIn?: bool
}
