package prompt

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::Prompt Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::Prompt"
	Properties: #Properties
}
