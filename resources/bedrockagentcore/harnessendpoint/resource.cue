package harnessendpoint

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::HarnessEndpoint - a named, stable reference to a specific version of a Harness that callers invoke, allowing the underlying version to be updated without changing how the agent is invoked.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::HarnessEndpoint"
	Properties: #Properties
}
