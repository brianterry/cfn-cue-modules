package master

import "github.com/brianterry/cfn-cue-modules/cfn"

// GuardDuty Master resource schema
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::Master"
	Properties: #Properties
}
