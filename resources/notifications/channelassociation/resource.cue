package channelassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Notifications::ChannelAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Notifications::ChannelAssociation"
	Properties: #Properties
}
