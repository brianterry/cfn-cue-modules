package apikeycredentialprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::ApiKeyCredentialProvider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::ApiKeyCredentialProvider"
	Properties: #Properties
}
