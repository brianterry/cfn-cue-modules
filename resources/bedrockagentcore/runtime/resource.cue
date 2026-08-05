package runtime

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::Runtime
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::Runtime"
	Properties: #Properties
}
