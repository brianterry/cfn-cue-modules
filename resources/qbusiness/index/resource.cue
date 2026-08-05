package index

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QBusiness::Index Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QBusiness::Index"
	Properties: #Properties
}
