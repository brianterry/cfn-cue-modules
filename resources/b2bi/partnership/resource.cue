package partnership

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::B2BI::Partnership Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::B2BI::Partnership"
	Properties: #Properties
}
