package dictionary

import "github.com/brianterry/cfn-cue-modules/cfn"

// Represents a custom dictionary for improving transcription accuracy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ElementalInference::Dictionary"
	Properties: #Properties
}
