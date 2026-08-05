package gatewaytarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::GatewayTarget
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::GatewayTarget"
	Properties: #Properties
}
