package networkperformancemetricsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::NetworkPerformanceMetricSubscription
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkPerformanceMetricSubscription"
	Properties: #Properties
}
