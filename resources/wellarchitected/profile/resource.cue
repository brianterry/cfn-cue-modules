package profile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::WellArchitected::Profile Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WellArchitected::Profile"
	Properties: #Properties
}
