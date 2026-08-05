package link

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Oam::Link Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Oam::Link"
	Properties: #Properties
}
