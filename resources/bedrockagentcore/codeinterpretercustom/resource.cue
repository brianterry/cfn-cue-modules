package codeinterpretercustom

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource definition for AWS::BedrockAgentCore::CodeInterpreterCustom
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::CodeInterpreterCustom"
	Properties: #Properties
}
