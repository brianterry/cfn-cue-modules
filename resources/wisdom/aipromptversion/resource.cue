package aipromptversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::AIPromptVersion Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::AIPromptVersion"
	Properties: #Properties
}
