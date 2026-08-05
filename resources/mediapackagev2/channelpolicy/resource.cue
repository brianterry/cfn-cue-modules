package channelpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// <p>Represents a resource-based policy that allows or denies access to a channel.</p>
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackageV2::ChannelPolicy"
	Properties: #Properties
}
