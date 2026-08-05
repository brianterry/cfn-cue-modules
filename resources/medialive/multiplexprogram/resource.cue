package multiplexprogram

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for AWS::MediaLive::Multiplexprogram
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaLive::Multiplexprogram"
	Properties: #Properties
}
