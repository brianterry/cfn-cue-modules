package executionplan

import "github.com/brianterry/cfn-cue-modules/cfn"

// A KendraRanking Rescore execution plan
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KendraRanking::ExecutionPlan"
	Properties: #Properties
}
