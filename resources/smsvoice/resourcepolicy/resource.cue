package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SMSVOICE::ResourcePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SMSVOICE::ResourcePolicy"
	Properties: #Properties
}
