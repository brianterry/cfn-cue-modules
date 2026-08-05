package metricfilter

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::Logs::MetricFilter`` resource specifies a metric filter that describes how CWL extracts information from logs and transforms it into Amazon CloudWatch metrics. If you have multiple metric filters that are associated with a log group, all the filters are applied to the log streams in that group.
 The maximum number of metric filters that can be associated with a log group is 100.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::MetricFilter"
	Properties: #Properties
}
