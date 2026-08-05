package simulation

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::SimSpaceWeaver::Simulation resource creates an AWS Simulation.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SimSpaceWeaver::Simulation"
	Properties: #Properties
}
