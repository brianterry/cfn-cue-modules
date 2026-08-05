package cloudwatchalarmtemplate

import "strings"

#Properties: {
	ComparisonOperator: #CloudWatchAlarmTemplateComparisonOperator
	// The number of datapoints within the evaluation period that must be breaching to trigger the alarm.
	DatapointsToAlarm?: number & >=1
	// A resource's optional description.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(1024)
	// The number of periods over which data is compared to the specified threshold.
	EvaluationPeriods: number & >=1
	// A cloudwatch alarm template group's identifier. Can be either be its id or current name.
	GroupIdentifier?: string & =~"^[^\\s]+$"
	// The name of the metric associated with the alarm. Must be compatible with targetResourceType.
	MetricName: string & strings.MinRunes(0) & strings.MaxRunes(64)
	// A resource's name. Names must be unique within the scope of a resource type in a specific region.
	Name: string & =~"^[^\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	// The period, in seconds, over which the specified statistic is applied.
	Period: number & >=10 & <=86400
	Statistic: #CloudWatchAlarmTemplateStatistic
	Tags?: #TagMap
	TargetResourceType: #CloudWatchAlarmTemplateTargetResourceType
	// The threshold value to compare with the specified statistic.
	Threshold: number
	TreatMissingData: #CloudWatchAlarmTemplateTreatMissingData
}
