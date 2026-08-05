package fleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// AWS::RoboMaker::Fleet resource creates an AWS RoboMaker fleet. Fleets contain robots and can receive deployments.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::RoboMaker::Fleet"
	Properties: #Properties
}
