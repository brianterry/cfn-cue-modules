package aiguardrail

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::AIGuardrail Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::AIGuardrail"
	Properties: #Properties
}
