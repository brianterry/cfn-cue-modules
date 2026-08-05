package channelplacementgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::ChannelPlacementGroup Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::ChannelPlacementGroup"
	Properties: #Properties
}
