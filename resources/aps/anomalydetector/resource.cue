package anomalydetector

import "github.com/brianterry/cfn-cue-modules/cfn"

// AnomalyDetector schema for cloudformation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::APS::AnomalyDetector"
	Properties: #Properties
}
