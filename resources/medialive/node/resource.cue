package node

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::MediaLive::Node Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::Node"
	Properties: #Properties
}
