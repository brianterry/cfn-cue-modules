package messagetemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::MessageTemplate Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::MessageTemplate"
	Properties: #Properties
}
