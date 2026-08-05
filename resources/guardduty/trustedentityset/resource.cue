package trustedentityset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GuardDuty::TrustedEntitySet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::TrustedEntitySet"
	Properties: #Properties
}
