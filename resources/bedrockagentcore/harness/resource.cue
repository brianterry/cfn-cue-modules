package harness

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::Harness - a managed agentic loop service that provides a turnkey solution for running stateful, tool-equipped AI agents.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::Harness"
	Properties: #Properties
}
