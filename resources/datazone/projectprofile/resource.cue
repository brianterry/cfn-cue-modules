package projectprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::DataZone::ProjectProfile Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::ProjectProfile"
	Properties: #Properties
}
