package servicelevelobjective

import "strings"

#Properties: {
	BurnRateConfigurations?: #BurnRateConfigurations
	// An optional description for this SLO. Default is 'No description'
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	ExclusionWindows?: #ExclusionWindows
	Goal?: #Goal
	// The name of this SLO.
	Name: string & =~"^[0-9A-Za-z][-._0-9A-Za-z ]{0,126}[0-9A-Za-z]$"
	RequestBasedSli?: #RequestBasedSli
	Sli?: #Sli
	Tags?: #Tags
}

#BurnRateConfiguration: {
	// The number of minutes to use as the look-back window.
	LookBackWindowMinutes: int & >=1 & <=10080
}

#CalendarInterval: {
	Duration: #Duration
	DurationUnit: #DurationUnit
	// Epoch time in seconds you want the first interval to start. Be sure to choose a time that configures the intervals the way that you want. For example, if you want weekly intervals starting on Mondays at 6 a.m., be sure to specify a start time that is a Monday at 6 a.m.
	// As soon as one calendar interval ends, another automatically begins.
	StartTime: int & >=946684800
}

#CompositeSliComponent: {
	OperationName: string
}

#CompositeSliConfig: {
	CompositeSliComponents?: #CompositeSliComponents
	SelectionConfig: #SelectionConfig
}

#DependencyConfig: {
	DependencyKeyAttributes: #DependencyKeyAttributes
	// When the SLO monitors a specific operation of the dependency, this field specifies the name of that operation in the dependency.
	DependencyOperationName: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Dimension: {
	// The name of the dimension. Dimension names must contain only ASCII characters, must include at least one non-whitespace character, and cannot start with a colon (:). ASCII control characters are not supported as part of dimension names.
	Name: string
	// The value of the dimension. Dimension values must contain only ASCII characters and must include at least one non-whitespace character. ASCII control characters are not supported as part of dimension values
	Value: string
}

#ExclusionWindow: {
	// An optional reason for scheduling this time exclusion window. Default is 'No reason'.
	Reason?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	RecurrenceRule?: #RecurrenceRule
	// The time you want the exclusion window to start at. Note that time exclusion windows can only be scheduled in the future, not the past.
	StartTime?: string
	Window: #Window
}

#Goal: {
	// The threshold that determines if the goal is being met. An attainment goal is the ratio of good periods that meet the threshold requirements to the total periods within the interval. For example, an attainment goal of 99.9% means that within your interval, you are targeting 99.9% of the periods to be in healthy state.
	// If you omit this parameter, 99 is used to represent 99% as the attainment goal.
	AttainmentGoal?: number
	Interval?: #Interval
	// The percentage of remaining budget over total budget that you want to get warnings for. If you omit this parameter, the default of 50.0 is used.
	WarningThreshold?: number
}

#Interval: {
	CalendarInterval?: #CalendarInterval
	RollingInterval?: #RollingInterval
}

#Metric: {
	// An array of one or more dimensions to use to define the metric that you want to use.
	Dimensions?: [...#Dimension]
	// The name of the metric to use.
	MetricName?: string
	// The namespace of the metric.
	Namespace?: string
}

#MetricDataQuery: {
	// The ID of the account where the metrics are located, if this is a cross-account alarm.
	AccountId?: string
	// The math expression to be performed on the returned data.
	Expression?: string
	// A short name used to tie this object to the results in the response.
	Id: string
	// A metric to be used directly for the SLO, or to be used in the math expression that will be used for the SLO. Within one MetricDataQuery, you must specify either Expression or MetricStat but not both.
	MetricStat?: #MetricStat
	// This option indicates whether to return the timestamps and raw data values of this metric.
	ReturnData?: bool
}

#MetricSource: {
	MetricSourceAttributes?: #MetricSourceAttributes
	MetricSourceKeyAttributes: #MetricSourceKeyAttributes
}

#MetricStat: {
	Metric: #Metric
	// The granularity, in seconds, to be used for the metric.
	Period: int
	// The statistic to use for comparison to the threshold. It can be any CloudWatch statistic or extended statistic.
	Stat: string
	// If you omit Unit then all data that was collected with any unit is returned, along with the corresponding units that were specified when the data was reported to CloudWatch. If you specify a unit, the operation returns only data that was collected with that unit specified. If you specify a unit that does not match the data collected, the results of the operation are null. CloudWatch does not perform unit conversions.
	Unit?: string
}

#MonitoredRequestCountMetric: {
	// If you want to count "bad requests" to determine the percentage of successful requests for this request-based SLO, specify the metric to use as "bad requests" in this structure.
	BadCountMetric?: #MetricDataQueries
	// If you want to count "good requests" to determine the percentage of successful requests for this request-based SLO, specify the metric to use as "good requests" in this structure.
	GoodCountMetric?: #MetricDataQueries
}

#RecurrenceRule: {
	// A cron or rate expression denoting how often to repeat this exclusion window.
	Expression: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#RequestBasedSli: {
	// The arithmetic operation used when comparing the specified metric to the threshold.
	ComparisonOperator?: "GreaterThanOrEqualTo" | "LessThanOrEqualTo" | "LessThan" | "GreaterThan"
	// The value that the SLI metric is compared to.
	MetricThreshold?: number
	RequestBasedSliMetric: #RequestBasedSliMetric
}

#RequestBasedSliMetric: {
	CompositeSliConfig?: #CompositeSliConfig
	DependencyConfig?: #DependencyConfig
	KeyAttributes?: #KeyAttributes
	MetricName?: #MetricName
	MetricSource?: #MetricSource
	// If the SLO monitors either the LATENCY or AVAILABILITY metric that Application Signals collects, this field displays which of those metrics is used.
	MetricType?: "LATENCY" | "AVAILABILITY"
	MonitoredRequestCountMetric?: #MonitoredRequestCountMetric
	// If the SLO monitors a specific operation of the service, this field displays that operation name.
	OperationName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// This structure defines the metric that is used as the "total requests" number for a request-based SLO. The number observed for this metric is divided by the number of "good requests" or "bad requests" that is observed for the metric defined in `MonitoredRequestCountMetric`.
	TotalRequestCountMetric?: #MetricDataQueries
}

#RollingInterval: {
	Duration: #Duration
	DurationUnit: #DurationUnit
}

#SelectionConfig: {
	Pattern?: string & =~"^.+$"
	Type: #SelectionType
}

#Sli: {
	// The arithmetic operation used when comparing the specified metric to the threshold.
	ComparisonOperator: "GreaterThanOrEqualTo" | "LessThanOrEqualTo" | "LessThan" | "GreaterThan"
	// The value that the SLI metric is compared to.
	MetricThreshold: number
	SliMetric: #SliMetric
}

#SliMetric: {
	CompositeSliConfig?: #CompositeSliConfig
	DependencyConfig?: #DependencyConfig
	KeyAttributes?: #KeyAttributes
	MetricDataQueries?: #MetricDataQueries
	MetricName?: #MetricName
	MetricSource?: #MetricSource
	// If the SLO monitors either the LATENCY or AVAILABILITY metric that Application Signals collects, this field displays which of those metrics is used.
	MetricType?: "LATENCY" | "AVAILABILITY"
	// If the SLO monitors a specific operation of the service, this field displays that operation name.
	OperationName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The number of seconds to use as the period for SLO evaluation. Your application's performance is compared to the SLI during each period. For each period, the application is determined to have either achieved or not achieved the necessary performance.
	PeriodSeconds?: int & >=60 & <=900
	// The statistic to use for comparison to the threshold. It can be any CloudWatch statistic or extended statistic
	Statistic?: string & strings.MinRunes(1) & strings.MaxRunes(20)
}

#Tag: {
	// A string that you can use to assign a value. The combination of tag keys and values can help you organize and categorize your resources.
	Key: string & =~"^(?!aws:)[a-zA-Z+-=._:/]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the specified tag key.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Window: {
	Duration: #Duration
	DurationUnit: #DurationUnit
}
