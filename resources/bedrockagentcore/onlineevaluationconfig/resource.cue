package onlineevaluationconfig

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::OnlineEvaluationConfig - Creates an online evaluation configuration for continuous monitoring of agent performance.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::OnlineEvaluationConfig"
	Properties: #Properties
}
