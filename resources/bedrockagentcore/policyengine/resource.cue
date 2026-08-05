package policyengine

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::PolicyEngine
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::PolicyEngine"
	Properties: #Properties
}
