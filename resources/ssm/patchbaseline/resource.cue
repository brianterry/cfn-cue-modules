package patchbaseline

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSM::PatchBaseline
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::PatchBaseline"
	Properties: #Properties
}
