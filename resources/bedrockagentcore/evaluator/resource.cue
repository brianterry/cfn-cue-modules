package evaluator

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::Evaluator - Creates a custom evaluator for agent quality assessment using LLM-as-a-Judge configurations.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::Evaluator"
	Properties: #Properties
}
