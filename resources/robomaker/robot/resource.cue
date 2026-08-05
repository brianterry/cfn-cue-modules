package robot

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::RoboMaker::Robot resource creates an AWS RoboMaker Robot.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RoboMaker::Robot"
	Properties: #Properties
}
