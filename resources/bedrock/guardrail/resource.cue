package guardrail

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Bedrock::Guardrail Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Bedrock::Guardrail"
	Properties: #Properties
}
