package dataaccessor

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::QBusiness::DataAccessor Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::QBusiness::DataAccessor"
	Properties: #Properties
}
