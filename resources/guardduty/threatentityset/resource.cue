package threatentityset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GuardDuty::ThreatEntitySet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::ThreatEntitySet"
	Properties: #Properties
}
