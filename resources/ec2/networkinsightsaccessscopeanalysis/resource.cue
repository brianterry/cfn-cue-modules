package networkinsightsaccessscopeanalysis

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::EC2::NetworkInsightsAccessScopeAnalysis
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkInsightsAccessScopeAnalysis"
	Properties: #Properties
}
