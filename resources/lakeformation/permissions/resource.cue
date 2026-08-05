package permissions

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::LakeFormation::Permissions
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LakeFormation::Permissions"
	Properties: #Properties
}
