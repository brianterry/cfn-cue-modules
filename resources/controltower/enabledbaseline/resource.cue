package enabledbaseline

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ControlTower::EnabledBaseline Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ControlTower::EnabledBaseline"
	Properties: #Properties
}
