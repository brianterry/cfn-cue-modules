package quickresponse

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::QuickResponse Resource Type.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::QuickResponse"
	Properties: #Properties
}
