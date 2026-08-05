package network

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaLive::Network.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::Network"
	Properties: #Properties
}
