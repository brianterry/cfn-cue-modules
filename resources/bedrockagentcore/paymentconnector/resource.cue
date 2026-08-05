package paymentconnector

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::PaymentConnector
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::PaymentConnector"
	Properties: #Properties
}
