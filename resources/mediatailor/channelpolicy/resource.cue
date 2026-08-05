package channelpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaTailor::ChannelPolicy Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaTailor::ChannelPolicy"
	Properties: #Properties
}
