package tracker

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Location::Tracker Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Location::Tracker"
	Properties: #Properties
}
