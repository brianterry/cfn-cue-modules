package robotapplicationversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::RoboMaker::RobotApplicationVersion resource creates an AWS RoboMaker RobotApplicationVersion. This helps you control which code your robot uses.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RoboMaker::RobotApplicationVersion"
	Properties: #Properties
}
