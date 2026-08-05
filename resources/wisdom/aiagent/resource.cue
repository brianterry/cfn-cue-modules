package aiagent

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::AIAgent Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::AIAgent"
	Properties: #Properties
}
