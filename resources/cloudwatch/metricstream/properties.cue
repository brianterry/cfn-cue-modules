package metricstream

import "strings"

#Properties: {
	// Define which metrics will be not streamed. Metrics matched by multiple instances of MetricStreamFilter are joined with an OR operation by default. If both IncludeFilters and ExcludeFilters are omitted, all metrics in the account will be streamed. IncludeFilters and ExcludeFilters are mutually exclusive. Default to null.
	ExcludeFilters?: [...#MetricStreamFilter]
	// The ARN of the Kinesis Firehose where to stream the data.
	FirehoseArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// Define which metrics will be streamed. Metrics matched by multiple instances of MetricStreamFilter are joined with an OR operation by default. If both IncludeFilters and ExcludeFilters are omitted, all metrics in the account will be streamed. IncludeFilters and ExcludeFilters are mutually exclusive. Default to null.
	IncludeFilters?: [...#MetricStreamFilter]
	// If you are creating a metric stream in a monitoring account, specify true to include metrics from source accounts that are linked to this monitoring account, in the metric stream. The default is false.
	IncludeLinkedAccountsMetrics?: bool
	// Name of the metric stream.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The output format of the data streamed to the Kinesis Firehose.
	OutputFormat?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The ARN of the role that provides access to the Kinesis Firehose.
	RoleArn?: string & strings.MinRunes(20) & strings.MaxRunes(2048)
	// By default, a metric stream always sends the MAX, MIN, SUM, and SAMPLECOUNT statistics for each metric that is streamed. You can use this parameter to have the metric stream also send additional statistics in the stream. This array can have up to 100 members.
	StatisticsConfigurations?: [...#MetricStreamStatisticsConfiguration]
	// A set of tags to assign to the delivery stream.
	Tags?: [...#Tag]
}

#MetricStreamFilter: {
	// Only metrics with MetricNames matching these values will be streamed. Must be set together with Namespace.
	MetricNames?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
	// Only metrics with Namespace matching this value will be streamed.
	Namespace: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#MetricStreamStatisticsConfiguration: {
	// The additional statistics to stream for the metrics listed in IncludeMetrics.
	AdditionalStatistics: [...string]
	// An array that defines the metrics that are to have additional statistics streamed.
	IncludeMetrics: [...#MetricStreamStatisticsMetric]
}

#MetricStreamStatisticsMetric: {
	// The name of the metric.
	MetricName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The namespace of the metric.
	Namespace: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#Tag: {
	// A unique identifier for the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// String which you can use to describe or define the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
