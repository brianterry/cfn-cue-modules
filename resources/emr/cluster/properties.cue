package cluster

#Properties: {
	AdditionalInfo?: {...}
	Applications?: [...#Application]
	AutoScalingRole?: string
	AutoTerminationPolicy?: #AutoTerminationPolicy
	BootstrapActions?: [...#BootstrapActionConfig]
	Configurations?: [...#Configuration]
	CustomAmiId?: string
	EbsRootVolumeIops?: int
	EbsRootVolumeSize?: int
	EbsRootVolumeThroughput?: int
	Instances: #JobFlowInstancesConfig
	JobFlowRole: string
	KerberosAttributes?: #KerberosAttributes
	LogEncryptionKmsKeyId?: string
	LogUri?: string
	ManagedScalingPolicy?: #ManagedScalingPolicy
	Name: string
	OSReleaseLabel?: string
	PlacementGroupConfigs?: [...#PlacementGroupConfig]
	ReleaseLabel?: string
	ScaleDownBehavior?: string
	SecurityConfiguration?: string
	ServiceRole: string
	StepConcurrencyLevel?: int
	Steps?: [...#StepConfig]
	Tags?: [...#Tag]
	VisibleToAllUsers?: bool
}

#Application: {
	AdditionalInfo?: {...}
	Args?: [...string]
	Name?: string
	Version?: string
}

#AutoScalingPolicy: {
	Constraints: #ScalingConstraints
	Rules: [...#ScalingRule]
}

#AutoTerminationPolicy: {
	IdleTimeout?: int
}

#BootstrapActionConfig: {
	Name: string
	ScriptBootstrapAction: #ScriptBootstrapActionConfig
}

#CloudWatchAlarmDefinition: {
	ComparisonOperator: string
	Dimensions?: [...#MetricDimension]
	EvaluationPeriods?: int
	MetricName: string
	Namespace?: string
	Period: int
	Statistic?: string
	Threshold: number
	Unit?: string
}

#ComputeLimits: {
	MaximumCapacityUnits: int
	MaximumCoreCapacityUnits?: int
	MaximumOnDemandCapacityUnits?: int
	MinimumCapacityUnits: int
	UnitType: string
}

#Configuration: {
	Classification?: string
	ConfigurationProperties?: {...}
	Configurations?: [...#Configuration]
}

#EbsBlockDeviceConfig: {
	VolumeSpecification: #VolumeSpecification
	VolumesPerInstance?: int
}

#EbsConfiguration: {
	EbsBlockDeviceConfigs?: [...#EbsBlockDeviceConfig]
	EbsOptimized?: bool
}

#HadoopJarStepConfig: {
	Args?: [...string]
	Jar: string
	MainClass?: string
	StepProperties?: [...#KeyValue]
}

#InstanceFleetConfig: {
	InstanceTypeConfigs?: [...#InstanceTypeConfig]
	LaunchSpecifications?: #InstanceFleetProvisioningSpecifications
	Name?: string
	ResizeSpecifications?: #InstanceFleetResizingSpecifications
	TargetOnDemandCapacity?: int
	TargetSpotCapacity?: int
}

#InstanceFleetProvisioningSpecifications: {
	OnDemandSpecification?: #OnDemandProvisioningSpecification
	SpotSpecification?: #SpotProvisioningSpecification
}

#InstanceFleetResizingSpecifications: {
	OnDemandResizeSpecification?: #OnDemandResizingSpecification
	SpotResizeSpecification?: #SpotResizingSpecification
}

#InstanceGroupConfig: {
	AutoScalingPolicy?: #AutoScalingPolicy
	BidPrice?: string
	Configurations?: [...#Configuration]
	CustomAmiId?: string
	EbsConfiguration?: #EbsConfiguration
	InstanceCount: int
	InstanceType: string
	Market?: string
	Name?: string
}

#InstanceTypeConfig: {
	BidPrice?: string
	BidPriceAsPercentageOfOnDemandPrice?: number
	Configurations?: [...#Configuration]
	CustomAmiId?: string
	EbsConfiguration?: #EbsConfiguration
	InstanceType: string
	Priority?: number
	WeightedCapacity?: int
}

#JobFlowInstancesConfig: {
	AdditionalMasterSecurityGroups?: [...string]
	AdditionalSlaveSecurityGroups?: [...string]
	CoreInstanceFleet?: #InstanceFleetConfig
	CoreInstanceGroup?: #InstanceGroupConfig
	Ec2KeyName?: string
	Ec2SubnetId?: string
	Ec2SubnetIds?: [...string]
	EmrManagedMasterSecurityGroup?: string
	EmrManagedSlaveSecurityGroup?: string
	HadoopVersion?: string
	KeepJobFlowAliveWhenNoSteps?: bool
	MasterInstanceFleet?: #InstanceFleetConfig
	MasterInstanceGroup?: #InstanceGroupConfig
	Placement?: #PlacementType
	ServiceAccessSecurityGroup?: string
	TaskInstanceFleets?: [...#InstanceFleetConfig]
	TaskInstanceGroups?: [...#InstanceGroupConfig]
	TerminationProtected?: bool
	UnhealthyNodeReplacement?: bool
}

#KerberosAttributes: {
	ADDomainJoinPassword?: string
	ADDomainJoinUser?: string
	CrossRealmTrustPrincipalPassword?: string
	KdcAdminPassword: string
	Realm: string
}

#KeyValue: {
	Key?: string
	Value?: string
}

#ManagedScalingPolicy: {
	ComputeLimits?: #ComputeLimits
	ScalingStrategy?: string
	UtilizationPerformanceIndex?: int
}

#MetricDimension: {
	Key: string
	Value: string
}

#OnDemandCapacityReservationOptions: {
	CapacityReservationPreference?: string
	CapacityReservationResourceGroupArn?: string
	UsageStrategy?: string
}

#OnDemandProvisioningSpecification: {
	AllocationStrategy: string
	CapacityReservationOptions?: #OnDemandCapacityReservationOptions
}

#OnDemandResizingSpecification: {
	AllocationStrategy?: string
	CapacityReservationOptions?: #OnDemandCapacityReservationOptions
	TimeoutDurationMinutes?: int
}

#PlacementGroupConfig: {
	InstanceRole: string
	PlacementStrategy?: string
}

#PlacementType: {
	AvailabilityZone: string
}

#ScalingAction: {
	Market?: string
	SimpleScalingPolicyConfiguration: #SimpleScalingPolicyConfiguration
}

#ScalingConstraints: {
	MaxCapacity: int
	MinCapacity: int
}

#ScalingRule: {
	Action: #ScalingAction
	Description?: string
	Name: string
	Trigger: #ScalingTrigger
}

#ScalingTrigger: {
	CloudWatchAlarmDefinition: #CloudWatchAlarmDefinition
}

#ScriptBootstrapActionConfig: {
	Args?: [...string]
	Path: string
}

#SimpleScalingPolicyConfiguration: {
	AdjustmentType?: string
	CoolDown?: int
	ScalingAdjustment: int
}

#SpotProvisioningSpecification: {
	AllocationStrategy?: string
	BlockDurationMinutes?: int
	TimeoutAction: string
	TimeoutDurationMinutes: int
}

#SpotResizingSpecification: {
	AllocationStrategy?: string
	TimeoutDurationMinutes?: int
}

#StepConfig: {
	ActionOnFailure?: string
	HadoopJarStep: #HadoopJarStepConfig
	Name: string
}

#Tag: {
	Key: string
	Value: string
}

#VolumeSpecification: {
	Iops?: int
	SizeInGB: int
	Throughput?: int
	VolumeType: string
}
