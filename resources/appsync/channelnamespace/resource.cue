package channelnamespace

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AppSync ChannelNamespace
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AppSync::ChannelNamespace"
	Properties: #Properties
}
