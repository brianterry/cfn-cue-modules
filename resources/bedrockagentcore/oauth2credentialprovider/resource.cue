package oauth2credentialprovider

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::BedrockAgentCore::OAuth2CredentialProvider
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::OAuth2CredentialProvider"
	Properties: #Properties
}
