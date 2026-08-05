package domain

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::VoiceID::Domain resource specifies an Amazon VoiceID Domain.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VoiceID::Domain"
	Properties: #Properties
}
