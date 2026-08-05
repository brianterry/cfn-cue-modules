package paymentcredentialprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::PaymentCredentialProvider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::PaymentCredentialProvider"
	Properties: #Properties
}
