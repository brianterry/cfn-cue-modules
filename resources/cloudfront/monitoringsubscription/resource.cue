package monitoringsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::MonitoringSubscription"
	Properties: #Properties
}
