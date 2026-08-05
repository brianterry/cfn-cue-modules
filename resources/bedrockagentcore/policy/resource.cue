package policy

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::Policy
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::Policy"
	Properties: #Properties
}
