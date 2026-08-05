package resourcepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::ResourcePolicy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::ResourcePolicy"
	Properties: #Properties
}
