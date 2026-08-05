package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::APS::ResourcePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::APS::ResourcePolicy"
	Properties: #Properties
}
