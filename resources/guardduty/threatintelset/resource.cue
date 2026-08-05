package threatintelset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GuardDuty::ThreatIntelSet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::ThreatIntelSet"
	Properties: #Properties
}
