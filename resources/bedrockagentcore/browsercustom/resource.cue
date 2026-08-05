package browsercustom

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource definition for AWS::BedrockAgentCore::BrowserCustom
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::BrowserCustom"
	Properties: #Properties
}
