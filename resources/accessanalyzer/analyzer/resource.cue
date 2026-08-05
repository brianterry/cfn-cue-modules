package analyzer

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::AccessAnalyzer::Analyzer type specifies an analyzer of the user's account
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AccessAnalyzer::Analyzer"
	Properties: #Properties
}
