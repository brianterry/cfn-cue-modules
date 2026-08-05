package playbackconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaTailor::PlaybackConfiguration
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaTailor::PlaybackConfiguration"
	Properties: #Properties
}
