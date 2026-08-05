package agentalias

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::AgentAlias Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::AgentAlias"
	Properties: #Properties
}
