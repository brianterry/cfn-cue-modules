package profile

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::B2BI::Profile Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::B2BI::Profile"
	Properties: #Properties
}
