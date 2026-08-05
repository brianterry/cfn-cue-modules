package scalingplan

#Properties: {
	ApplicationSource: #ApplicationSource
	ScalingInstructions: [...#ScalingInstruction]
}

#ApplicationSource: {
	CloudFormationStackARN?: string
	TagFilters?: [...#TagFilter]
}

#CustomizedLoadMetricSpecification: {
	Dimensions?: [...#MetricDimension]
	MetricName: string
	Namespace: string
	Statistic: string
	Unit?: string
}

#CustomizedScalingMetricSpecification: {
	Dimensions?: [...#MetricDimension]
	MetricName: string
	Namespace: string
	Statistic: string
	Unit?: string
}

#MetricDimension: {
	Name: string
	Value: string
}

#PredefinedLoadMetricSpecification: {
	PredefinedLoadMetricType: string
	ResourceLabel?: string
}

#PredefinedScalingMetricSpecification: {
	PredefinedScalingMetricType: string
	ResourceLabel?: string
}

#ScalingInstruction: {
	CustomizedLoadMetricSpecification?: #CustomizedLoadMetricSpecification
	DisableDynamicScaling?: bool
	MaxCapacity: int
	MinCapacity: int
	PredefinedLoadMetricSpecification?: #PredefinedLoadMetricSpecification
	PredictiveScalingMaxCapacityBehavior?: string
	PredictiveScalingMaxCapacityBuffer?: int
	PredictiveScalingMode?: string
	ResourceId: string
	ScalableDimension: string
	ScalingPolicyUpdateBehavior?: string
	ScheduledActionBufferTime?: int
	ServiceNamespace: string
	TargetTrackingConfigurations: [...#TargetTrackingConfiguration]
}

#TagFilter: {
	Key: string
	Values?: [...string]
}

#TargetTrackingConfiguration: {
	CustomizedScalingMetricSpecification?: #CustomizedScalingMetricSpecification
	DisableScaleIn?: bool
	EstimatedInstanceWarmup?: int
	PredefinedScalingMetricSpecification?: #PredefinedScalingMetricSpecification
	ScaleInCooldown?: int
	ScaleOutCooldown?: int
	TargetValue: number
}
