package dataset

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::BedrockAgentCore::Dataset Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::Dataset"
	Properties: #Properties
}
