package scalingpolicy

#Properties: {
	// Specifies how the scaling adjustment is interpreted. The valid values are ChangeInCapacity, ExactCapacity, and PercentChangeInCapacity.
	AdjustmentType?: string
	// The name of the Auto Scaling group.
	AutoScalingGroupName: string
	// The duration of the policy's cooldown period, in seconds. When a cooldown period is specified here, it overrides the default cooldown period defined for the Auto Scaling group.
	Cooldown?: string
	// The estimated time, in seconds, until a newly launched instance can contribute to the CloudWatch metrics. If not provided, the default is to use the value from the default cooldown period for the Auto Scaling group. Valid only if the policy type is TargetTrackingScaling or StepScaling.
	EstimatedInstanceWarmup?: int
	// The aggregation type for the CloudWatch metrics. The valid values are Minimum, Maximum, and Average. If the aggregation type is null, the value is treated as Average. Valid only if the policy type is StepScaling.
	MetricAggregationType?: string
	// The minimum value to scale by when the adjustment type is PercentChangeInCapacity. For example, suppose that you create a step scaling policy to scale out an Auto Scaling group by 25 percent and you specify a MinAdjustmentMagnitude of 2. If the group has 4 instances and the scaling policy is performed, 25 percent of 4 is 1. However, because you specified a MinAdjustmentMagnitude of 2, Amazon EC2 Auto Scaling scales out the group by 2 instances.
	MinAdjustmentMagnitude?: int
	// One of the following policy types: TargetTrackingScaling, StepScaling, SimpleScaling (default), PredictiveScaling
	PolicyType?: string
	// A predictive scaling policy. Includes support for predefined metrics only.
	PredictiveScalingConfiguration?: #PredictiveScalingConfiguration
	// The amount by which to scale, based on the specified adjustment type. A positive value adds to the current capacity while a negative number removes from the current capacity. For exact capacity, you must specify a positive value. Required if the policy type is SimpleScaling. (Not used with any other policy type.)
	ScalingAdjustment?: int
	// A set of adjustments that enable you to scale based on the size of the alarm breach. Required if the policy type is StepScaling. (Not used with any other policy type.)
	StepAdjustments?: [...#StepAdjustment]
	// A target tracking scaling policy. Includes support for predefined or customized metrics.
	TargetTrackingConfiguration?: #TargetTrackingConfiguration
}

#CustomizedMetricSpecification: {
	Dimensions?: [...#MetricDimension]
	MetricName?: string
	Metrics?: [...#TargetTrackingMetricDataQuery]
	Namespace?: string
	Period?: int
	Statistic?: string
	Unit?: string
}

#Metric: {
	Dimensions?: [...#MetricDimension]
	MetricName: string
	Namespace: string
}

#MetricDataQuery: {
	Expression?: string
	Id: string
	Label?: string
	MetricStat?: #MetricStat
	ReturnData?: bool
}

#MetricDimension: {
	Name: string
	Value: string
}

#MetricStat: {
	Metric: #Metric
	Stat: string
	Unit?: string
}

#PredefinedMetricSpecification: {
	PredefinedMetricType: string
	ResourceLabel?: string
}

#PredictiveScalingConfiguration: {
	MaxCapacityBreachBehavior?: string
	MaxCapacityBuffer?: int
	MetricSpecifications: [...#PredictiveScalingMetricSpecification]
	Mode?: string
	SchedulingBufferTime?: int
}

#PredictiveScalingCustomizedCapacityMetric: {
	MetricDataQueries: [...#MetricDataQuery]
}

#PredictiveScalingCustomizedLoadMetric: {
	MetricDataQueries: [...#MetricDataQuery]
}

#PredictiveScalingCustomizedScalingMetric: {
	MetricDataQueries: [...#MetricDataQuery]
}

#PredictiveScalingMetricSpecification: {
	CustomizedCapacityMetricSpecification?: #PredictiveScalingCustomizedCapacityMetric
	CustomizedLoadMetricSpecification?: #PredictiveScalingCustomizedLoadMetric
	CustomizedScalingMetricSpecification?: #PredictiveScalingCustomizedScalingMetric
	PredefinedLoadMetricSpecification?: #PredictiveScalingPredefinedLoadMetric
	PredefinedMetricPairSpecification?: #PredictiveScalingPredefinedMetricPair
	PredefinedScalingMetricSpecification?: #PredictiveScalingPredefinedScalingMetric
	TargetValue: number
}

#PredictiveScalingPredefinedLoadMetric: {
	PredefinedMetricType: string
	ResourceLabel?: string
}

#PredictiveScalingPredefinedMetricPair: {
	PredefinedMetricType: string
	ResourceLabel?: string
}

#PredictiveScalingPredefinedScalingMetric: {
	PredefinedMetricType: string
	ResourceLabel?: string
}

#StepAdjustment: {
	MetricIntervalLowerBound?: number
	MetricIntervalUpperBound?: number
	ScalingAdjustment: int
}

#TargetTrackingConfiguration: {
	CustomizedMetricSpecification?: #CustomizedMetricSpecification
	DisableScaleIn?: bool
	PredefinedMetricSpecification?: #PredefinedMetricSpecification
	TargetValue: number
}

#TargetTrackingMetricDataQuery: {
	Expression?: string
	Id: string
	Label?: string
	MetricStat?: #TargetTrackingMetricStat
	Period?: int
	ReturnData?: bool
}

#TargetTrackingMetricStat: {
	Metric: #Metric
	Period?: int
	Stat: string
	Unit?: string
}
