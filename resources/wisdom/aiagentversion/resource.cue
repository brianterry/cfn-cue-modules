package aiagentversion

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::AIAgentVersion Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::AIAgentVersion"
	Properties: #Properties
}
