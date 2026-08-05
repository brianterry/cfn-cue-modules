package loganomalydetector

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::Logs::LogAnomalyDetector resource specifies a CloudWatch Logs LogAnomalyDetector.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::LogAnomalyDetector"
	Properties: #Properties
}
