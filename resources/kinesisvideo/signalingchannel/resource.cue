package signalingchannel

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type Definition for AWS::KinesisVideo::SignalingChannel
#Resource: cfn.#ResourceBase & {
	Type: "AWS::KinesisVideo::SignalingChannel"
	Properties: #Properties
}
