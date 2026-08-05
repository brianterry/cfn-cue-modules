package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SSM::ResourcePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SSM::ResourcePolicy"
	Properties: #Properties
}
