package metricstream

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for Metric Stream
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::MetricStream"
	Properties: #Properties
}
