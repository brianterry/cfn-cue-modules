package enabledcontrol

import "github.com/brianterry/cfn-cue-modules/cfn"

// Enables a control on a specified target.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ControlTower::EnabledControl"
	Properties: #Properties
}
