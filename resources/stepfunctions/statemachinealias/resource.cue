package statemachinealias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for StateMachineAlias
#Resource: cfn.#ResourceBase & {
	Type: "AWS::StepFunctions::StateMachineAlias"
	Properties: #Properties
}
