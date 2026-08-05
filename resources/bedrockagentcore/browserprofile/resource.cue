package browserprofile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource definition for AWS::BedrockAgentCore::BrowserProfile
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::BrowserProfile"
	Properties: #Properties
}
