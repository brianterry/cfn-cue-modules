package landingzone

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ControlTower::LandingZone Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ControlTower::LandingZone"
	Properties: #Properties
}
