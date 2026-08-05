package runtimeendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource definition for AWS::BedrockAgentCore::RuntimeEndpoint
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::RuntimeEndpoint"
	Properties: #Properties
}
