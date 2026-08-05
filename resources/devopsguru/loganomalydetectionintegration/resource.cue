package loganomalydetectionintegration

import "github.com/brianterry/cfn-cue-modules/cfn"

// This resource schema represents the LogAnomalyDetectionIntegration resource in the Amazon DevOps Guru.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DevOpsGuru::LogAnomalyDetectionIntegration"
	Properties: #Properties
}
