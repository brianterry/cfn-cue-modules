package playbackkeypair

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::IVS::PlaybackKeyPair
#Resource: cfn.#ResourceBase & {
	Type: "AWS::IVS::PlaybackKeyPair"
	Properties: #Properties
}
