package gateway

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::BedrockAgentCore::Gateway Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::Gateway"
	Properties: #Properties
}
