package feed

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a feed that receives media for inference processing
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElementalInference::Feed"
	Properties: #Properties
}
