package statemachine

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for StateMachine
#Resource: cfn.#ResourceBase & {
	Type: "AWS::StepFunctions::StateMachine"
	Properties: #Properties
}
