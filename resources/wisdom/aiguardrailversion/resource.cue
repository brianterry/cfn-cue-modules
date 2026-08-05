package aiguardrailversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::AIGuardrailVersion Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::AIGuardrailVersion"
	Properties: #Properties
}
