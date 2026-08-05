package tag

import "github.com/brianterry/cfn-cue-modules/cfn"

// A resource schema representing a Lake Formation Tag.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LakeFormation::Tag"
	Properties: #Properties
}
