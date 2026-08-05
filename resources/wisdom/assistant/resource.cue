package assistant

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::Wisdom::Assistant Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Wisdom::Assistant"
	Properties: #Properties
}
