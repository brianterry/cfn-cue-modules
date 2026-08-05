package filter

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GuardDuty::Filter
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::Filter"
	Properties: #Properties
}
