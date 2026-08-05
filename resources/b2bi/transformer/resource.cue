package transformer

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::B2BI::Transformer Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::B2BI::Transformer"
	Properties: #Properties
}
