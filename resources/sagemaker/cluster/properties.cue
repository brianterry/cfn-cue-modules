package cluster

import "strings"

#Properties: {
	AutoScaling?: #ClusterAutoScalingConfig
	// The name of the HyperPod Cluster.
	ClusterName?: string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}$" & strings.MinRunes(1) & strings.MaxRunes(63)
	// The cluster role for the autoscaler to assume.
	ClusterRole?: string & =~"^arn:aws[a-z\\-]*:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Determines the scaling strategy for the SageMaker HyperPod cluster. When set to 'Continuous', enables continuous scaling which dynamically manages node provisioning. If the parameter is omitted, uses the standard scaling approach in previous release.
	NodeProvisioningMode?: "Continuous"
	// If node auto-recovery is set to true, faulty nodes will be replaced or rebooted when a failure is detected. If set to false, nodes will be labelled when a fault is detected.
	NodeRecovery?: "Automatic" | "None"
	Orchestrator?: #Orchestrator
	RestrictedInstanceGroupsConfig?: #RestrictedInstanceGroupsConfig
	// Custom tags for managing the SageMaker HyperPod cluster as an AWS resource. You can add tags to your cluster in the same way you add them in other AWS services that support tagging.
	Tags?: [...#Tag]
	TieredStorageConfig?: #TieredStorageConfig
	VpcConfig?: #VpcConfig
}

#AlarmDetails: {
	// The name of the alarm.
	AlarmName: string & =~"(?!\\s*$).+" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#AutoPatchConfig: {
	DeploymentConfig?: #DeploymentConfig
	PatchSchedule?: #PatchSchedule
	// The patching strategy that determines when and how instances are patched. WhenIdle patches instances as they become idle. WhenAllIdle patches all instances when they are all idle.
	PatchingStrategy: "WhenIdle" | "WhenAllIdle"
}

#CapacitySizeConfig: {
	// Specifies whether SageMaker should process the update by amount or percentage of instances.
	Type: string & =~"INSTANCE_COUNT|CAPACITY_PERCENTAGE"
	// Specifies the amount or percentage of instances SageMaker updates at a time.
	Value: int & >=1
}

#ClusterAutoScalingConfig: {
	// The type of auto-scaler to use
	AutoScalerType?: "Karpenter"
	// The auto-scaling mode for the cluster
	Mode: "Enable" | "Disable"
}

#ClusterCapacityRequirements: {
	OnDemand?: #ClusterOnDemandOptions
	Spot?: #ClusterSpotOptions
}

#ClusterEbsVolumeConfig: {
	RootVolume?: bool
	VolumeKmsKeyId?: string & =~"^[a-zA-Z0-9:/_-]*$" & strings.MinRunes(0) & strings.MaxRunes(2048)
	// The size in gigabytes (GB) of the additional EBS volume to be attached to the instances in the SageMaker HyperPod cluster instance group. The additional EBS volume is attached to each instance within the SageMaker HyperPod cluster instance group and mounted to /opt/sagemaker.
	VolumeSizeInGB?: int & >=1 & <=16384
}

#ClusterFsxLustreConfig: {
	// The DNS name of the FSx for Lustre file system.
	DnsName: string & =~"^((fs|fc)i?-[0-9a-f]{8,}\\..{4,253})$" & strings.MinRunes(16) & strings.MaxRunes(275)
	// The mount name of the FSx for Lustre file system.
	MountName: string & =~"^([A-Za-z0-9_-]{1,8})$" & strings.MinRunes(1) & strings.MaxRunes(8)
	// The mount path for the FSx for Lustre file system.
	MountPath?: string & =~"^/(?!/)(?!.*/$)[a-zA-Z0-9._-]+(/[a-zA-Z0-9._-]+)*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#ClusterFsxOpenZfsConfig: {
	// The DNS name of the FSx for OpenZFS file system.
	DnsName: string & =~"^((fs|fc)i?-[0-9a-f]{8,}\\..{4,253})$" & strings.MinRunes(16) & strings.MaxRunes(275)
	// The mount path for the FSx for OpenZFS file system.
	MountPath?: string & =~"^/(?!/)(?!.*/$)[a-zA-Z0-9._-]+(/[a-zA-Z0-9._-]+)*$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#ClusterInstanceGroup: {
	AutoPatchConfig?: #AutoPatchConfig
	CapacityRequirements?: #ClusterCapacityRequirements
	// The number of instances that are currently in the instance group of a SageMaker HyperPod cluster.
	CurrentCount?: int & >=0
	ExecutionRole: #ExecutionRole
	ImageId?: #ImageId
	// The number of instances you specified to add to the instance group of a SageMaker HyperPod cluster.
	InstanceCount: int & >=0
	InstanceGroupName: #InstanceGroupName
	InstanceRequirements?: #InstanceRequirements
	InstanceStorageConfigs?: #ClusterInstanceStorageConfigs
	InstanceType?: #InstanceType
	KubernetesConfig?: #ClusterKubernetesConfig
	LifeCycleConfig?: #ClusterLifeCycleConfig
	// The minimum number of instances required for the instance group to be InService. MinInstanceCount must be less than or equal to InstanceCount.
	MinInstanceCount?: int & >=0
	NetworkInterface?: #ClusterNetworkInterface
	OnStartDeepHealthChecks?: #OnStartDeepHealthChecks
	OverrideVpcConfig?: #VpcConfig
	ScheduledUpdateConfig?: #ScheduledUpdateConfig
	SlurmConfig?: #ClusterSlurmConfig
	// The number you specified to TreadsPerCore in CreateCluster for enabling or disabling multithreading. For instance types that support multithreading, you can specify 1 for disabling multithreading and 2 for enabling multithreading.
	ThreadsPerCore?: int & >=1 & <=2
	// The Amazon Resource Name (ARN) of the training plan to use for this cluster instance group. For more information about how to reserve GPU capacity for your SageMaker HyperPod clusters using Amazon SageMaker Training Plan, see CreateTrainingPlan.
	TrainingPlanArn?: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:training-plan/.*$" & strings.MinRunes(50) & strings.MaxRunes(2048)
}

#ClusterKubernetesConfig: {
	Labels?: #ClusterKubernetesLabels
	Taints?: #ClusterKubernetesTaints
}

#ClusterKubernetesTaint: {
	// The effect of the taint.
	Effect: "NoSchedule" | "PreferNoSchedule" | "NoExecute"
	// The key of the taint.
	Key: string
	// The value of the taint.
	Value?: string
}

#ClusterLifeCycleConfig: {
	// The file name of the entrypoint script of lifecycle scripts under SourceS3Uri. This entrypoint script runs during cluster creation. Mutually exclusive with OnInitComplete.
	OnCreate?: string & =~"^[\\S\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The file name of the extension script under SourceS3Uri. This script runs after HyperPod configures the default software on the instance. Mutually exclusive with OnCreate.
	OnInitComplete?: string & =~"^[\\S\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// An Amazon S3 bucket path where your lifecycle scripts are stored.
	SourceS3Uri?: string & =~"^(https|s3)://([^/]+)/?(.*)$" & strings.MaxRunes(1024)
}

#ClusterNetworkInterface: {
	// The type of network interface.
	InterfaceType: "efa" | "efa-only"
}

#ClusterOrchestratorEksConfig: {
	// The ARN of the EKS cluster, such as arn:aws:eks:us-west-2:123456789012:cluster/my-eks-cluster
	ClusterArn: string
}

#ClusterOrchestratorSlurmConfig: {
	// The strategy for managing Slurm configuration on the cluster.
	SlurmConfigStrategy?: "Overwrite" | "Managed" | "Merge"
}

#ClusterRestrictedInstanceGroup: {
	// The number of instances that are currently in the restricted instance group of a SageMaker HyperPod cluster.
	CurrentCount?: int & >=0
	EnvironmentConfig?: #EnvironmentConfig
	ExecutionRole: #ExecutionRole
	// The number of instances you specified to add to the restricted instance group of a SageMaker HyperPod cluster.
	InstanceCount: int & >=0
	InstanceGroupName: #InstanceGroupName
	InstanceStorageConfigs?: #ClusterInstanceStorageConfigs
	InstanceType: #InstanceType
	OnStartDeepHealthChecks?: #OnStartDeepHealthChecks
	OverrideVpcConfig?: #VpcConfig
	// The number you specified to TreadsPerCore in CreateCluster for enabling or disabling multithreading. For instance types that support multithreading, you can specify 1 for disabling multithreading and 2 for enabling multithreading.
	ThreadsPerCore?: int & >=1 & <=2
	// The Amazon Resource Name (ARN) of the training plan to use for this cluster restricted instance group. For more information about how to reserve GPU capacity for your SageMaker HyperPod clusters using Amazon SageMaker Training Plan, see CreateTrainingPlan.
	TrainingPlanArn?: string & =~"^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:training-plan/.*$" & strings.MinRunes(50) & strings.MaxRunes(2048)
}

#ClusterSlurmConfig: {
	// The type of Slurm node for this instance group.
	NodeType: "Controller" | "Login" | "Compute"
	// The Slurm partitions that this instance group belongs to. Maximum of 1 partition.
	PartitionNames?: [...string & =~"^[a-zA-Z0-9](-*[a-zA-Z0-9])*$" & strings.MinRunes(0) & strings.MaxRunes(1024)]
}

#DeploymentConfig: {
	AutoRollbackConfiguration?: #AutoRollbackConfiguration
	RollingUpdatePolicy?: #RollingUpdatePolicy
	// The duration in seconds that SageMaker waits before updating more instances in the cluster.
	WaitIntervalInSeconds?: int & >=0 & <=3600
}

#EnvironmentConfig: {
	FSxLustreConfig?: #FSxLustreConfig
}

#FSxLustreConfig: {
	// The throughput capacity of the FSx for Lustre file system, measured in MB/s per TiB of storage.
	PerUnitStorageThroughput: int & >=125 & <=1000
	// The storage capacity of the FSx for Lustre file system, specified in gibibytes (GiB).
	SizeInGiB: int & >=1200 & <=100800
}

#InstanceRequirements: {
	// A list of instance types that can be used for this instance group.
	InstanceTypes: [...#InstanceType]
}

#PatchSchedule: {
	// The date and time of the next scheduled patch, set by the system when a patch AMI is detected.
	NextPatchDate?: string
}

#RestrictedInstanceGroupsConfig: {
	SharedEnvironmentConfig: #SharedEnvironmentConfig
}

#RollingUpdatePolicy: {
	MaximumBatchSize: #CapacitySizeConfig
	RollbackMaximumBatchSize?: #CapacitySizeConfig
}

#ScheduledUpdateConfig: {
	DeploymentConfig?: #DeploymentConfig
	// A cron expression that specifies the schedule that SageMaker follows when updating the AMI.
	ScheduleExpression: string & =~"cron\\((?:[0-5][0-9]|[0-9]|) (?:[01][0-9]|2[0-3]|[0-9]) (?:[1-9]|0[1-9]|[12][0-9]|3[01]|\\?) (?:[1-9]|0[1-9]|1[0-2]|\\*|\\*/(?:[1-9]|1[0-2])|) (?:MON|TUE|WED|THU|FRI|SAT|SUN|[1-7]|\\?|L|(?:[1-7]#[1-5])|(?:[1-7]L)) (?:20[2-9][0-9]|\\*|)\\)" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#SharedEnvironmentConfig: {
	FSxLustreConfig?: #FSxLustreConfig
	// The deletion policy for the shared FSx Lustre file system. Keep retains the FSx when RIGs are deleted. DeleteIfNotUsed deletes the FSx when no RIGs reference it.
	FSxLustreDeletionPolicy: "Keep" | "DeleteIfNotUsed"
}

#Tag: {
	// The key name of the tag. You can specify a value that is 1 to 128 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Key: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag. You can specify a value that is 0 to 256 Unicode characters in length and cannot be prefixed with aws:. You can use any of the following characters: the set of Unicode letters, digits, whitespace, _, ., /, =, +, and -.
	Value: string & =~"^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$" & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TieredStorageConfig: {
	// The percentage of instance memory to allocate for tiered storage.
	InstanceMemoryAllocationPercentage?: int
	// The mode of tiered storage.
	Mode: "Enable" | "Disable"
}

#VpcConfig: {
	// The VPC security group IDs, in the form sg-xxxxxxxx. Specify the security groups for the VPC that is specified in the Subnets field.
	SecurityGroupIds: [...string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)]
	// The ID of the subnets in the VPC to which you want to connect your training job or model.
	Subnets: [...string & =~"[-0-9a-zA-Z]+" & strings.MaxRunes(32)]
}
