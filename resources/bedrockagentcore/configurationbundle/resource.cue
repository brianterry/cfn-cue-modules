package configurationbundle

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::BedrockAgentCore::ConfigurationBundle Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::BedrockAgentCore::ConfigurationBundle"
	Properties: #Properties
}
