package statemachineversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for StateMachineVersion
#Resource: cfn.#ResourceBase & {
	Type: "AWS::StepFunctions::StateMachineVersion"
	Properties: #Properties
}
