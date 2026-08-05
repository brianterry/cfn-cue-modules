package paymentmanager

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::PaymentManager
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::PaymentManager"
	Properties: #Properties
}
