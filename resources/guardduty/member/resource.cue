package member

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GuardDuty::Member
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::Member"
	Properties: #Properties
}
