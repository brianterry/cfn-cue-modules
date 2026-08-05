package instancegroupconfig

#Properties: {
	AutoScalingPolicy?: #AutoScalingPolicy
	BidPrice?: string
	Configurations?: [...#Configuration]
	CustomAmiId?: string
	EbsConfiguration?: #EbsConfiguration
	InstanceCount: int
	InstanceRole: string
	InstanceType: string
	JobFlowId: string
	Market?: string
	Name?: string
}

#AutoScalingPolicy: {
	Constraints: #ScalingConstraints
	Rules: [...#ScalingRule]
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

#MetricDimension: {
	Key: string
	Value: string
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

#SimpleScalingPolicyConfiguration: {
	AdjustmentType?: string
	CoolDown?: int
	ScalingAdjustment: int
}

#VolumeSpecification: {
	Iops?: int
	SizeInGB: int
	Throughput?: int
	VolumeType: string
}
