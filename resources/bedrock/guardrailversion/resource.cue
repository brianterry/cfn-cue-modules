package guardrailversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::GuardrailVersion Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::GuardrailVersion"
	Properties: #Properties
}
