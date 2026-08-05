package lens

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::WellArchitected::Lens Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WellArchitected::Lens"
	Properties: #Properties
}
