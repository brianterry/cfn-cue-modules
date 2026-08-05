package capability

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::B2BI::Capability Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::B2BI::Capability"
	Properties: #Properties
}
