package promptversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::PromptVersion Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::PromptVersion"
	Properties: #Properties
}
