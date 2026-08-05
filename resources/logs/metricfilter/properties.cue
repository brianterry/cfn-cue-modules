package metricfilter

import "strings"

#Properties: {
	// This parameter is valid only for log groups that have an active log transformer. For more information about log transformers, see [PutTransformer](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutTransformer.html).
	// If this value is ``true``, the metric filter is applied on the transformed version of the log events instead of the original ingested log events.
	ApplyOnTransformedLogs?: bool
	// The list of system fields that are emitted as additional dimensions in the generated metrics. Returns the ``emitSystemFieldDimensions`` value if it was specified when the metric filter was created.
	EmitSystemFieldDimensions?: [...string]
	// The filter expression that specifies which log events are processed by this metric filter based on system fields. Returns the ``fieldSelectionCriteria`` value if it was specified when the metric filter was created.
	FieldSelectionCriteria?: string & strings.MinRunes(0) & strings.MaxRunes(2000)
	// The name of the metric filter.
	FilterName?: string & =~"^[^:*]{1,512}" & strings.MinRunes(1) & strings.MaxRunes(512)
	// A filter pattern for extracting metric data out of ingested log events. For more information, see [Filter and Pattern Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html).
	FilterPattern: string & strings.MaxRunes(1024)
	// The name of an existing log group that you want to associate with this metric filter.
	LogGroupName: string & =~"^[.\\-_/#A-Za-z0-9]{1,512}" & strings.MinRunes(1) & strings.MaxRunes(512)
	// The metric transformations.
	MetricTransformations: [...#MetricTransformation]
}

#Dimension: {
	// The name for the CW metric dimension that the metric filter creates.
	// Dimension names must contain only ASCII characters, must include at least one non-whitespace character, and cannot start with a colon (:).
	Key: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The log event field that will contain the value for this dimension. This dimension will only be published for a metric if the value is found in the log event. For example, ``$.eventType`` for JSON log events, or ``$server`` for space-delimited log events.
	Value: string & strings.MinRunes(1) & strings.MaxRunes(255)
}

#MetricTransformation: {
	// (Optional) The value to emit when a filter pattern does not match a log event. This value can be null.
	DefaultValue?: number
	// The fields to use as dimensions for the metric. One metric filter can include as many as three dimensions.
	// Metrics extracted from log events are charged as custom metrics. To prevent unexpected high charges, do not specify high-cardinality fields such as ``IPAddress`` or ``requestID`` as dimensions. Each different value found for a dimension is treated as a separate metric and accrues charges as a separate custom metric.
	// CloudWatch Logs disables a metric filter if it generates 1000 different name/value pairs for your specified dimensions within a certain amount of time. This helps to prevent accidental high charges.
	// You can also set up a billing alarm to alert you if your charges are higher than expected. For more information, see [Creating a Billing Alarm to Monitor Your Estimated Charges](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html).
	Dimensions?: [...#Dimension]
	// The name of the CloudWatch metric.
	MetricName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// A custom namespace to contain your metric in CloudWatch. Use namespaces to group together metrics that are similar. For more information, see [Namespaces](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#Namespace).
	MetricNamespace: string & =~"^[0-9a-zA-Z\\.\\-_\\/#]{1,256}" & strings.MinRunes(1) & strings.MaxRunes(256)
	// The value that is published to the CloudWatch metric. For example, if you're counting the occurrences of a particular term like ``Error``, specify 1 for the metric value. If you're counting the number of bytes transferred, reference the value that is in the log event by using $. followed by the name of the field that you specified in the filter pattern, such as ``$.size``.
	MetricValue: string & =~".{1,100}" & strings.MinRunes(1) & strings.MaxRunes(100)
	// The unit to assign to the metric. If you omit this, the unit is set as ``None``.
	Unit?: "Seconds" | "Microseconds" | "Milliseconds" | "Bytes" | "Kilobytes" | "Megabytes" | "Gigabytes" | "Terabytes" | "Bits" | "Kilobits" | "Megabits" | "Gigabits" | "Terabits" | "Percent" | "Count" | "Bytes/Second" | "Kilobytes/Second" | "Megabytes/Second" | "Gigabytes/Second" | "Terabytes/Second" | "Bits/Second" | "Kilobits/Second" | "Megabits/Second" | "Gigabits/Second" | "Terabits/Second" | "Count/Second" | "None"
}
