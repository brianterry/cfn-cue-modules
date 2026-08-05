package memory

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::Memory
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::Memory"
	Properties: #Properties
}
