package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CloudTrail::ResourcePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudTrail::ResourcePolicy"
	Properties: #Properties
}
