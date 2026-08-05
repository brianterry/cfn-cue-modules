package anomalydetector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudWatch::AnomalyDetector
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudWatch::AnomalyDetector"
	Properties: #Properties
}
