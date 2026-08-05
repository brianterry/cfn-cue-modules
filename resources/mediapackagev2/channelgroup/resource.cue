package channelgroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// <p>Represents a channel group that facilitates the grouping of multiple channels.</p>
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackageV2::ChannelGroup"
	Properties: #Properties
}
