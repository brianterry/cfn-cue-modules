package simulationapplication

import "github.com/brianterry/cfn-cue-modules/cfn"

// This schema is for testing purpose only.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RoboMaker::SimulationApplication"
	Properties: #Properties
}
