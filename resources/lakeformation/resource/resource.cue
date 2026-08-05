package resource

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::LakeFormation::Resource
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LakeFormation::Resource"
	Properties: #Properties
}
