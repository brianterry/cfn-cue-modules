package voicechannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Pinpoint::VoiceChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Pinpoint::VoiceChannel"
	Properties: #Properties
}
