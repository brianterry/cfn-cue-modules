package ipset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GuardDuty::IPSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::IPSet"
	Properties: #Properties
}
