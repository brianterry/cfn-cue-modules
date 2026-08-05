package networkinsightsanalysis

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EC2::NetworkInsightsAnalysis
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkInsightsAnalysis"
	Properties: #Properties
}
