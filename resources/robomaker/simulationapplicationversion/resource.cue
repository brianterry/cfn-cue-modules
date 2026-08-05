package simulationapplicationversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::RoboMaker::SimulationApplicationVersion resource creates an AWS RoboMaker SimulationApplicationVersion. This helps you control which code your simulation uses.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RoboMaker::SimulationApplicationVersion"
	Properties: #Properties
}
