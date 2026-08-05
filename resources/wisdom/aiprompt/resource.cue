package aiprompt

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::AIPrompt Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::AIPrompt"
	Properties: #Properties
}
