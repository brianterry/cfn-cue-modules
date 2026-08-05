package detector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GuardDuty::Detector
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::Detector"
	Properties: #Properties
}
